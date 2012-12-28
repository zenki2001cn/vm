" ============================================================================
" File: java.vim
" Author: Zenki (Zenki.J.Zha), zenki2001cn@163.com
" Description: 
" Version: 
" Last Modified: 2012-12-27 13:40:40
"   1. Need to set $ANDROID_TOOLS_PATH.
"   2. Need to switch to the Android project directory , then open the java file.
"   3. Directory structure as follows :
"       .
"       |-- src                     --- all java source code dir
"       |-- bin                     --- all java class dir
"       |-- libs                    --- all java jar dir
"       |-- AndroidManifest.xml     --- special android project
"       `-- project.properties      --- special android project
" ============================================================================
let s:cwd_dir = getcwd()

function! java#LoadProjectProperties(file)
    if filereadable(a:file) 
        let s:androidSdkPath = $ANDROID_TOOLS_PATH
        " the following line uses external tools and is less portable
        "let s:androidTargetPlatform = system('grep target= project.properties | cut -d \= -f 2')
        exec 'vimgrep /target=/j '. a:file
        let s:androidTargetPlatform = split(getqflist()[0].text, '=')[1] 
        let s:targetAndroidJar = s:androidSdkPath . '/platforms/' . s:androidTargetPlatform . '/android.jar'
        if $CLASSPATH =~ ''
            let $CLASSPATH = s:targetAndroidJar . ':' . $CLASSPATH
        else
            let $CLASSPATH = s:targetAndroidJar
        endif

        return 1
    end

    return 0
endfunction

if glob('AndroidManifest.xml') =~ ''
    call java#LoadProjectProperties('project.properties')
    call java#LoadProjectProperties('default.properties')
endif

function! java#AddDirOrJarToClassPath(dir)
    let lib_jar = glob(a:dir)
    if lib_jar =~ ''
        let lib_jar_path = split(lib_jar, '\n')
        for jar_path in lib_jar_path
            call javacomplete#AddClassPath(jar_path)
        endfor
    endif   
endfunction

function! java#AddDirToSourcePath(dir)
    let src = glob(a:dir)
    if src =~ ''
        call javacomplete#AddSourcePath(src)
    endif
endfunction

function! JavaCompleteEnv()
    echohl Special
    echomsg '-------------------'
    echomsg 'ClassPath:'
    echomsg '-------------------'
    echohl None
    let class_path = split(javacomplete#GetClassPath(), ':')
    for path in class_path
        echomsg path
    endfor

    echomsg "               "
    echohl Special
    echomsg '-------------------'
    echomsg 'SourcePath:'
    echomsg '-------------------'
    echohl None
    let source_path = split(javacomplete#GetSourcePath(), ':')
    for path in source_path
        echomsg path
    endfor

    echomsg "               "
    echohl Special
    echomsg '-------------------'
    echomsg 'Android Project:'
    echomsg '-------------------'
    echohl None
    echomsg $ANDROID_TOOLS_PATH

    echomsg "               "
    echohl Special
    echomsg '-------------------'
    echomsg 'Java Home:'
    echomsg '-------------------'
    echohl None
    echomsg $JAVA_HOME
endfunction

call java#AddDirOrJarToClassPath(s:cwd_dir . '/'. 'libs/*.jar')
call java#AddDirOrJarToClassPath(s:cwd_dir . '/'. 'bin')
call java#AddDirToSourcePath(s:cwd_dir . '/'. 'src')
