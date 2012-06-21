" hints_man2.vim
"   Author: Charles E. Campbell, Jr.
"   Date:   Jan 12, 2012
"   Version: 2b
" ---------------------------------------------------------------------
"  Load Once: {{{1
if &cp || exists("b:loaded_hints_man2")
 finish
endif
let b:loaded_hints_man2= "v2b"
let s:keepcpo          = &cpo
set cpo&vim

" make sure command height is at least 2
if &ch < 2
 set ch=2
endif

" ---------------------------------------------------------------------
" Hints! {{{1
inorea <expr> accept	Hints#ShowHint('accept','int accept(int sockfd, struct sockaddr * addr, socklen_t * addrlen)')
inorea <expr> access Hints#ShowHint('access','int access(const char * pathname, int mode)')
inorea <expr> acct Hints#ShowHint('acct','int acct(const char * filename)')
inorea <expr> adjtimex Hints#ShowHint('adjtimex','int adjtimex(struct timex * buf)')
inorea <expr> alarm Hints#ShowHint('alarm','unsigned int alarm(unsigned int seconds)')
inorea <expr> alloc_hugepages Hints#ShowHint('alloc_hugepages','void *alloc_hugepages(int key, void * addr, size_t len, int prot, int flag)')
inorea <expr> arch_prctl Hints#ShowHint('arch_prctl','int arch_prctl(int code, unsigned long addr)')
inorea <expr> bdflush Hints#ShowHint('bdflush','int bdflush(int func, long * address)')
inorea <expr> bdflush Hints#ShowHint('bdflush','int bdflush(int func, long data)')
inorea <expr> brk Hints#ShowHint('brk','int brk(void * end_data_segment)')
inorea <expr> cacheflush Hints#ShowHint('cacheflush','int cacheflush(char * addr, int nbytes, int cache)')
inorea <expr> capget Hints#ShowHint('capget','int capget(cap_user_header_t header, cap_user_data_t data)')
inorea <expr> capset Hints#ShowHint('capset','int capset(cap_user_header_t header, const cap_user_data_t data)')
inorea <expr> chdir Hints#ShowHint('chdir','int chdir(const char * path)')
inorea <expr> chmod Hints#ShowHint('chmod','int chmod(const char * path, mode_t mode)')
inorea <expr> chown Hints#ShowHint('chown','int chown(const char * path, uid_t owner, gid_t group)')
inorea <expr> chroot Hints#ShowHint('chroot','int chroot(const char * path)')
inorea <expr> clone Hints#ShowHint('clone','int clone(int (* fn)(void *), void * child_stack, int flags, void * arg)')
inorea <expr> close Hints#ShowHint('close','int close(int fd)')
inorea <expr> connect Hints#ShowHint('connect','int connect(int sockfd, const struct sockaddr * serv_addr, socklen_t addrlen)')
inorea <expr> creat Hints#ShowHint('creat','int creat(const char * pathname, mode_t mode)')
inorea <expr> dup2 Hints#ShowHint('dup2','int dup2(int oldfd, int newfd)')
inorea <expr> dup Hints#ShowHint('dup','int dup(int oldfd)')
inorea <expr> epoll_create Hints#ShowHint('epoll_create','int epoll_create(int size)')
inorea <expr> epoll_ctl Hints#ShowHint('epoll_ctl','int epoll_ctl(int epfd, int op, int fd, struct epoll_event * event)')
inorea <expr> epoll_wait Hints#ShowHint('epoll_wait','int epoll_wait(int epfd, struct epoll_event * events, int maxevents, int timeout)')
inorea <expr> _exit Hints#ShowHint('_exit','void _exit(int status)')
inorea <expr> _Exit Hints#ShowHint('_Exit','void _Exit(int status)')
inorea <expr> exit_group Hints#ShowHint('exit_group','void exit_group(int status)')
inorea <expr> fchdir Hints#ShowHint('fchdir','int fchdir(int fd)')
inorea <expr> fchmod Hints#ShowHint('fchmod','int fchmod(int fildes, mode_t mode)')
inorea <expr> fchown Hints#ShowHint('fchown','int fchown(int fd, uid_t owner, gid_t group)')
inorea <expr> fcntl Hints#ShowHint('fcntl','int fcntl(int fd, int cmd)')
inorea <expr> fcntl Hints#ShowHint('fcntl','int fcntl(int fd, int cmd, long arg)')
inorea <expr> fcntl Hints#ShowHint('fcntl','int fcntl(int fd, int cmd, struct flock * lock)')
inorea <expr> fdatasync Hints#ShowHint('fdatasync','int fdatasync(int fd)')
inorea <expr> FD_CLR Hints#ShowHint('FD_CLR','FD_CLR(int fd, fd_set * set)')
inorea <expr> FD_ISSET Hints#ShowHint('FD_ISSET','FD_ISSET(int fd, fd_set * set)')
inorea <expr> FD_SET Hints#ShowHint('FD_SET','FD_SET(int fd, fd_set * set)')
inorea <expr> FD_ZERO Hints#ShowHint('FD_ZERO','FD_ZERO(fd_set * set)')
inorea <expr> fgetxattr Hints#ShowHint('fgetxattr','ssize_t fgetxattr (int filedes, const char* name, \t\t\t\t void* value, size_t size)')
inorea <expr> flistxattr Hints#ShowHint('flistxattr','ssize_t flistxattr (int filedes, \t\t\t\t char* list, size_t size)')
inorea <expr> flock Hints#ShowHint('flock','int flock(int fd, int operation)')
inorea <expr> fork Hints#ShowHint('fork','pid_t fork(void)')
inorea <expr> free_hugepages Hints#ShowHint('free_hugepages','int free_hugepages(void * addr)')
inorea <expr> fremovexattr Hints#ShowHint('fremovexattr','int fremovexattr (int filedes, const char* name)')
inorea <expr> fsetxattr Hints#ShowHint('fsetxattr','int fsetxattr (int filedes, const char* name, \t\t\t const void* value, size_t size, int flags)')
inorea <expr> fstatfs Hints#ShowHint('fstatfs','int fstatfs(int fd, struct statfs * buf)')
inorea <expr> fstat Hints#ShowHint('fstat','int fstat(int filedes, struct stat * buf)')
inorea <expr> fstatvfs Hints#ShowHint('fstatvfs','int fstatvfs(int fd, struct statvfs * buf)')
inorea <expr> fsync Hints#ShowHint('fsync','int fsync(int fd)')
inorea <expr> ftruncate Hints#ShowHint('ftruncate','int ftruncate(int fd, off_t length)')
inorea <expr> futex Hints#ShowHint('futex','int futex (int * uaddr, int op, int val, const struct timespec * timeout, int * uaddr2, int val3)')
inorea <expr> getcwd Hints#ShowHint('getcwd','long getcwd(char * buf, unsigned long size)')
inorea <expr> getdents Hints#ShowHint('getdents','int getdents(unsigned int fd, struct dirent * dirp, unsigned int count)')
inorea <expr> getdomainname Hints#ShowHint('getdomainname','int getdomainname(char * name, size_t len)')
inorea <expr> getdtablesize Hints#ShowHint('getdtablesize','int getdtablesize(void)')
inorea <expr> getegid Hints#ShowHint('getegid','gid_t getegid(void)')
inorea <expr> geteuid Hints#ShowHint('geteuid','uid_t geteuid(void)')
inorea <expr> getgid Hints#ShowHint('getgid','gid_t getgid(void)')
inorea <expr> getgroups Hints#ShowHint('getgroups','int getgroups(int size, gid_t list [])')
inorea <expr> gethostid Hints#ShowHint('gethostid','long gethostid(void)')
inorea <expr> gethostname Hints#ShowHint('gethostname','int gethostname(char * name, size_t len)')
inorea <expr> getpagesize Hints#ShowHint('getpagesize','int getpagesize(void)')
inorea <expr> getpeername Hints#ShowHint('getpeername','int getpeername(int s, struct sockaddr * name, socklen_t * namelen)')
inorea <expr> getpgid Hints#ShowHint('getpgid','pid_t getpgid(pid_t pid)')
inorea <expr> getpgrp Hints#ShowHint('getpgrp','pid_t getpgrp(void)')
inorea <expr> getpid Hints#ShowHint('getpid','pid_t getpid(void)')
inorea <expr> getppid Hints#ShowHint('getppid','pid_t getppid(void)')
inorea <expr> getpriority Hints#ShowHint('getpriority','int getpriority(int which, int who)')
inorea <expr> getresuid Hints#ShowHint('getresuid','int getresuid(uid_t * ruid, uid_t * euid, uid_t * suid)')
inorea <expr> getrlimit Hints#ShowHint('getrlimit','int getrlimit(int resource, struct rlimit * rlim)')
inorea <expr> getrusage Hints#ShowHint('getrusage','int getrusage(int who, struct rusage * usage)')
inorea <expr> getsid Hints#ShowHint('getsid','pid_t getsid(pid_t pid)')
inorea <expr> getsockname Hints#ShowHint('getsockname','int getsockname(int s, struct sockaddr * name, socklen_t * namelen)')
inorea <expr> getsockopt Hints#ShowHint('getsockopt','int getsockopt(int s, int level, int optname, void * optval, socklen_t * optlen)')
inorea <expr> get_thread_area Hints#ShowHint('get_thread_area','int get_thread_area (struct user_desc * u_info)')
inorea <expr> gettid Hints#ShowHint('gettid','pid_t gettid(void)')
inorea <expr> gettimeofday Hints#ShowHint('gettimeofday','int gettimeofday(struct timeval * tv, struct timezone * tz)')
inorea <expr> getuid Hints#ShowHint('getuid','uid_t getuid(void)')
inorea <expr> getxattr Hints#ShowHint('getxattr','ssize_t getxattr (const char* path, const char* name, \t\t\t\t void* value, size_t size)')
inorea <expr> idle Hints#ShowHint('idle','int idle(void)')
inorea <expr> intio_destroy Hints#ShowHint('intio_destroy','intio_destroy(io_context_tctx)')
inorea <expr> intio_setup Hints#ShowHint('intio_setup','intio_setup(intmaxevents, io_context_t*ctxp)')
inorea <expr> intppc_rtas Hints#ShowHint('intppc_rtas','intppc_rtas(struct rtas_args*uargs)')
inorea <expr> intsys_get_mempolicy Hints#ShowHint('intsys_get_mempolicy','intsys_get_mempolicy(int*policy, unsigned long*nmask, unsigned longmaxnode, unsigned longaddr, unsigned longflags)')
inorea <expr> intsys_swapcontext Hints#ShowHint('intsys_swapcontext','intsys_swapcontext(structucontext*old_ctx, structucontext*new_ctx, intr5, intr6, intr7, intr8, structpt_regs*regs)')
inorea <expr> ioctl Hints#ShowHint('ioctl','int ioctl(int d, int request, ...)')
inorea <expr> ioperm Hints#ShowHint('ioperm','int ioperm(unsigned long from, unsigned long num, int turn_on)')
inorea <expr> iopl Hints#ShowHint('iopl','int iopl(int level)')
inorea <expr> ipc Hints#ShowHint('ipc','int ipc(unsigned int call, int first, int second, int third, void * ptr, long fifth)')
inorea <expr> kill Hints#ShowHint('kill','int kill(pid_t pid, int sig)')
inorea <expr> killpg Hints#ShowHint('killpg','int killpg(int pgrp, int sig)')
inorea <expr> klogctl Hints#ShowHint('klogctl','int klogctl(int type, char * bufp, int len)')
inorea <expr> lchown Hints#ShowHint('lchown','int lchown(const char * path, uid_t owner, gid_t group)')
inorea <expr> lgetxattr Hints#ShowHint('lgetxattr','ssize_t lgetxattr (const char* path, const char* name, \t\t\t\t void* value, size_t size)')
inorea <expr> link Hints#ShowHint('link','int link(const char * oldpath, const char * newpath)')
inorea <expr> listen Hints#ShowHint('listen','int listen(int sockfd, int backlog)')
inorea <expr> listxattr Hints#ShowHint('listxattr','ssize_t listxattr (const char* path, \t\t\t\t char* list, size_t size)')
inorea <expr> llistxattr Hints#ShowHint('llistxattr','ssize_t llistxattr (const char* path, \t\t\t\t char* list, size_t size)')
inorea <expr> _llseek Hints#ShowHint('_llseek','int _llseek(unsigned int fd, unsigned long offset_high, unsigned long offset_low, loff_t * result, unsigned int whence)')
inorea <expr> longfstatfs64 Hints#ShowHint('longfstatfs64','longfstatfs64(unsignedintfd, size_tsz, structstatfs64*buf)')
inorea <expr> longio_cancel Hints#ShowHint('longio_cancel','longio_cancel(aio_context_tctx_id, structiocb*iocb, structio_event*result)')
inorea <expr> longio_getevents Hints#ShowHint('longio_getevents','longio_getevents(aio_context_tctx_id, longmin_nr, longnr, structio_event*events, structtimespec*timeout)')
inorea <expr> longio_submit Hints#ShowHint('longio_submit','longio_submit(aio_context_tctx_id, longnr, structiocb**iocbpp)')
inorea <expr> longstatfs64 Hints#ShowHint('longstatfs64','longstatfs64(constchar*path, size_tsz, structstatfs64*buf)')
inorea <expr> longsys_clock_getres Hints#ShowHint('longsys_clock_getres','longsys_clock_getres(clockid_twhich_clock, structtimespec*tp)')
inorea <expr> longsys_clock_gettime Hints#ShowHint('longsys_clock_gettime','longsys_clock_gettime(clockid_twhich_clock, structtimespec*tp)')
inorea <expr> longsys_clock_nanosleep Hints#ShowHint('longsys_clock_nanosleep','longsys_clock_nanosleep(clockid_twhich_clock, intflags, conststructtimespec*rqtp, structtimespec*rmtp)')
inorea <expr> longsys_clock_settime Hints#ShowHint('longsys_clock_settime','longsys_clock_settime(clockid_twhich_clock, conststructtimespec*tp)')
inorea <expr> longsys_delete_module Hints#ShowHint('longsys_delete_module','longsys_delete_module(constchar*name_user, unsignedintflags, conststructtimespec*rqtp, structtimespec*rmtp)')
inorea <expr> longsys_init_module Hints#ShowHint('longsys_init_module','longsys_init_module(void*umod, unsignedlonglen, constchar*uargs)')
inorea <expr> longsys_restart_syscall Hints#ShowHint('longsys_restart_syscall','longsys_restart_syscall(void)')
inorea <expr> longsys_rt_sigaction Hints#ShowHint('longsys_rt_sigaction','longsys_rt_sigaction(intsig, conststructsigaction*act, structsigaction*oact, size_tsigsetsize)')
inorea <expr> longsys_rt_sigpending Hints#ShowHint('longsys_rt_sigpending','longsys_rt_sigpending(sigset_t*set, size_tsigsetsize)')
inorea <expr> longsys_rt_sigprocmask Hints#ShowHint('longsys_rt_sigprocmask','longsys_rt_sigprocmask(sigset_t*set, sigset_t*oset, size_tsigsetsize)')
inorea <expr> longsys_rt_sigqueueinfo Hints#ShowHint('longsys_rt_sigqueueinfo','longsys_rt_sigqueueinfo(intpid, intsig, siginfo_t*uinfo)')
inorea <expr> longsys_rt_sigtimedwait Hints#ShowHint('longsys_rt_sigtimedwait','longsys_rt_sigtimedwait(constsigset_t*uthese, siginfo_t*uinfo, conststructstructtimespec *uts, size_tsigsetsize)')
inorea <expr> longsys_set_tid_address Hints#ShowHint('longsys_set_tid_address','longsys_set_tid_address(int*tidptr)')
inorea <expr> longsys_tgkill Hints#ShowHint('longsys_tgkill','longsys_tgkill(inttgid, intpid, intsig)')
inorea <expr> longsys_timer_create Hints#ShowHint('longsys_timer_create','longsys_timer_create(clockid_twhich_clock, structsigevent*timer_event_spec, timer_t*created_timer_id)')
inorea <expr> longsys_timer_delete Hints#ShowHint('longsys_timer_delete','longsys_timer_delete(timertimer_id)')
inorea <expr> longsys_timer_getoverrun Hints#ShowHint('longsys_timer_getoverrun','longsys_timer_getoverrun(timer_ttimer_id)')
inorea <expr> longsys_timer_gettime Hints#ShowHint('longsys_timer_gettime','longsys_timer_gettime(timer_ttimer_id, structitimerspec*setting)')
inorea <expr> longsys_timer_settime Hints#ShowHint('longsys_timer_settime','longsys_timer_settime(timer_ttimer_id, intflags, conststructitimerspec *new_setting, structitimerspec *old_setting)')
inorea <expr> lookup_dcookie Hints#ShowHint('lookup_dcookie','int lookup_dcookie(u64 cookie, char * buffer, size_t len)')
inorea <expr> lremovexattr Hints#ShowHint('lremovexattr','int lremovexattr (const char* path, const char* name)')
inorea <expr> lseek Hints#ShowHint('lseek','off_t lseek(int fildes, off_t offset, int whence)')
inorea <expr> lsetxattr Hints#ShowHint('lsetxattr','int lsetxattr (const char* path, const char* name, \t\t\t const void* value, size_t size, int flags)')
inorea <expr> lstat Hints#ShowHint('lstat','int lstat(const char * path, struct stat * buf)')
inorea <expr> madvise Hints#ShowHint('madvise','int madvise(void * start, size_t length, int advice)')
inorea <expr> mincore Hints#ShowHint('mincore','int mincore(void * start, size_t length, unsigned char * vec)')
inorea <expr> mkdir Hints#ShowHint('mkdir','int mkdir(const char * pathname, mode_t mode)')
inorea <expr> mknod Hints#ShowHint('mknod','int mknod(const char * pathname, mode_t mode, dev_t dev)')
inorea <expr> mlockall Hints#ShowHint('mlockall','int mlockall(int flags)')
inorea <expr> mlock Hints#ShowHint('mlock','int mlock(const void *addr, size_t len)')
inorea <expr> mmap2 Hints#ShowHint('mmap2','void * mmap2(void * start, size_t length, int prot, int flags, int fd, off_t pgoffset)')
inorea <expr> mmap Hints#ShowHint('mmap','void * mmap(void * start, size_t length, int prot, int flags, int fd, off_t offset)')
inorea <expr> modify_ldt Hints#ShowHint('modify_ldt','int modify_ldt(int func, void * ptr, unsigned long bytecount)')
inorea <expr> mount Hints#ShowHint('mount','int mount(const char * source, const char * target, const char * filesystemtype, unsigned long mountflags, const void * data)')
inorea <expr> mprotect Hints#ShowHint('mprotect','int mprotect(const void *addr, size_t len, int prot)')
inorea <expr> msgctl Hints#ShowHint('msgctl','int msgctl(int msqid, int cmd, struct msqid_ds * buf)')
inorea <expr> msgget Hints#ShowHint('msgget','int msgget(key_t key, int msgflg)')
inorea <expr> msgrcv Hints#ShowHint('msgrcv','ssize_t msgrcv(int msqid, struct msgbuf * msgp, size_t msgsz, long msgtyp, int msgflg)')
inorea <expr> msgsnd Hints#ShowHint('msgsnd','int msgsnd(int msqid, struct msgbuf * msgp, size_t msgsz, int msgflg)')
inorea <expr> msync Hints#ShowHint('msync','int msync(void * start, size_t length, int flags)')
inorea <expr> munlockall Hints#ShowHint('munlockall','int munlockall(void)')
inorea <expr> munlock Hints#ShowHint('munlock','int munlock(const void *addr, size_t len)')
inorea <expr> munmap Hints#ShowHint('munmap','int munmap(void * start, size_t length)')
inorea <expr> nanosleep Hints#ShowHint('nanosleep','int nanosleep(const struct timespec *req, struct timespec *rem)')
inorea <expr> nfsservctl Hints#ShowHint('nfsservctl','nfsservctl(int cmd, struct nfsctl_arg * argp, union nfsctl_res * resp)')
inorea <expr> nice Hints#ShowHint('nice','int nice(int inc)')
inorea <expr> open Hints#ShowHint('open','int open(const char * pathname, int flags)')
inorea <expr> open Hints#ShowHint('open','int open(const char * pathname, int flags, mode_t mode)')
inorea <expr> pause Hints#ShowHint('pause','int pause(void)')
inorea <expr> pciconfig_read Hints#ShowHint('pciconfig_read','int pciconfig_read(unsigned long bus, unsigned long dfn, unsigned long off, unsigned long len, void * buf)')
inorea <expr> pciconfig_write Hints#ShowHint('pciconfig_write','int pciconfig_write(unsigned long bus, unsigned long dfn, unsigned long off, unsigned long len, void * buf)')
inorea <expr> personality Hints#ShowHint('personality','int personality(unsigned long persona)')
inorea <expr> pipe Hints#ShowHint('pipe','int pipe(int filedes [2])')
inorea <expr> pivot_root Hints#ShowHint('pivot_root','int pivot_root(const char * new_root, const char * put_old)')
inorea <expr> poll Hints#ShowHint('poll','int poll(struct pollfd * ufds, nfds_t nfds, int timeout)')
inorea <expr> posix_fadvise Hints#ShowHint('posix_fadvise','int posix_fadvise(int fd, off_t offset, off_t len, int advice)')
inorea <expr> pread Hints#ShowHint('pread','ssize_t pread(int fd, void * buf, size_t count, off_t offset)')
inorea <expr> pselect Hints#ShowHint('pselect','int pselect(int n, fd_set *readfds, fd_set *writefds, fd_set *exceptfds, const struct timespec *timeout, const sigset_t *sigmask)')
inorea <expr> pselect Hints#ShowHint('pselect','int pselect(int nfds, fd_set * readfds, fd_set * writefds, fd_set * exceptfds, const struct timespec * ntimeout, sigset_t * sigmask)')
inorea <expr> ptrace Hints#ShowHint('ptrace','long ptrace(enum __ptrace_request request, pid_t pid, void * addr, void * data)')
inorea <expr> pwrite Hints#ShowHint('pwrite','ssize_t pwrite(int fd, const void * buf, size_t count, off_t offset)')
inorea <expr> quotactl Hints#ShowHint('quotactl','long quotactl(int cmd, char \(**special, qid_t id, caddr_t addr)')
inorea <expr> readahead Hints#ShowHint('readahead','ssize_t readahead(int fd, off64_t * offset, size_t count)')
inorea <expr> readdir Hints#ShowHint('readdir','int readdir(unsigned int fd, struct dirent * dirp, unsigned int count)')
inorea <expr> readlink Hints#ShowHint('readlink','int readlink(const char * path, char * buf, size_t bufsiz)')
inorea <expr> read Hints#ShowHint('read','ssize_t read(int fd, void * buf, size_t count)')
inorea <expr> readv Hints#ShowHint('readv','ssize_t readv(int fd, const struct iovec * vector, int count)')
inorea <expr> reboot Hints#ShowHint('reboot','int reboot(int flag)')
inorea <expr> reboot Hints#ShowHint('reboot','int reboot(int magic, int magic2, int flag, void * arg)')
inorea <expr> recvfrom Hints#ShowHint('recvfrom','ssize_t recvfrom(int s, void * buf, size_t len, int flags, struct sockaddr * from, socklen_t * fromlen)')
inorea <expr> recvmsg Hints#ShowHint('recvmsg','ssize_t recvmsg(int s, struct msghdr * msg, int flags)')
inorea <expr> recv Hints#ShowHint('recv','ssize_t recv(int s, void * buf, size_t len, int flags)')
inorea <expr> remap_file_pages Hints#ShowHint('remap_file_pages','int remap_file_pages(void * start, size_t size, int prot, ssize_t pgoff, int flags)')
inorea <expr> removexattr Hints#ShowHint('removexattr','int removexattr (const char* path, const char* name)')
inorea <expr> rename Hints#ShowHint('rename','int rename(const char * oldpath, const char * newpath)')
inorea <expr> rmdir Hints#ShowHint('rmdir','int rmdir(const char * pathname)')
inorea <expr> sbrk Hints#ShowHint('sbrk','void *sbrk(intptr_t increment)')
inorea <expr> sched_getaffinity Hints#ShowHint('sched_getaffinity','int sched_getaffinity(pid_t pid, unsigned int len, unsigned long * mask)')
inorea <expr> sched_getparam Hints#ShowHint('sched_getparam','int sched_getparam(pid_t pid, struct sched_param *p)')
inorea <expr> sched_get_priority_max Hints#ShowHint('sched_get_priority_max','int sched_get_priority_max(int policy)')
inorea <expr> sched_get_priority_min Hints#ShowHint('sched_get_priority_min','int sched_get_priority_min(int policy)')
inorea <expr> sched_getscheduler Hints#ShowHint('sched_getscheduler','int sched_getscheduler(pid_t pid)')
inorea <expr> sched_rr_get_interval Hints#ShowHint('sched_rr_get_interval','int sched_rr_get_interval(pid_t pid, struct timespec *tp)')
inorea <expr> sched_setaffinity Hints#ShowHint('sched_setaffinity','int sched_setaffinity(pid_t pid, unsigned int len, unsigned long * mask)')
inorea <expr> sched_setparam Hints#ShowHint('sched_setparam','int sched_setparam(pid_t pid, const struct sched_param *p)')
inorea <expr> sched_setscheduler Hints#ShowHint('sched_setscheduler','int sched_setscheduler(pid_t pid, int policy, const struct sched_param * p)')
inorea <expr> sched_yield Hints#ShowHint('sched_yield','int sched_yield(void)')
inorea <expr> select Hints#ShowHint('select','int select(int n, fd_set *readfds, fd_set *writefds, fd_set *exceptfds, struct timeval *timeout)')
inorea <expr> select Hints#ShowHint('select','int select(int nfds, fd_set * readfds, fd_set * writefds, fd_set * exceptfds, struct timeval * utimeout)')
inorea <expr> semctl Hints#ShowHint('semctl','int semctl(int semid, int semnum, int cmd, ...)')
inorea <expr> semget Hints#ShowHint('semget','int semget(key_t key, int nsems, int semflg)')
inorea <expr> semop Hints#ShowHint('semop','int semop(int semid, struct sembuf * sops, unsigned nsops)')
inorea <expr> semtimedop Hints#ShowHint('semtimedop','int semtimedop(int semid, struct sembuf * sops, unsigned nsops, struct timespec * timeout)')
inorea <expr> sendmsg Hints#ShowHint('sendmsg','ssize_t sendmsg(int s, const struct msghdr * msg, int flags)')
inorea <expr> send Hints#ShowHint('send','ssize_t send(int s, const void * buf, size_t len, int flags)')
inorea <expr> sendto Hints#ShowHint('sendto','ssize_t sendto(int s, const void * buf, size_t len, int flags, const struct sockaddr * to, socklen_t tolen)')
inorea <expr> setcontext Hints#ShowHint('setcontext','int setcontext(const ucontext_t * ucp)')
inorea <expr> setdomainname Hints#ShowHint('setdomainname','int setdomainname(const char * name, size_t len)')
inorea <expr> setegid Hints#ShowHint('setegid','int setegid(gid_t egid)')
inorea <expr> seteuid Hints#ShowHint('seteuid','int seteuid(uid_t euid)')
inorea <expr> setfsgid Hints#ShowHint('setfsgid','int setfsgid(uid_t fsgid)')
inorea <expr> setfsuid Hints#ShowHint('setfsuid','int setfsuid(uid_t fsuid)')
inorea <expr> setgid Hints#ShowHint('setgid','int setgid(gid_t gid)')
inorea <expr> setgroups Hints#ShowHint('setgroups','int setgroups(size_t size, const gid_t * list)')
inorea <expr> sethostid Hints#ShowHint('sethostid','int sethostid(long hostid)')
inorea <expr> sethostname Hints#ShowHint('sethostname','int sethostname(const char * name, size_t len)')
inorea <expr> setpgid Hints#ShowHint('setpgid','int setpgid(pid_t pid, pid_t pgid)')
inorea <expr> setpgrp Hints#ShowHint('setpgrp','int setpgrp(void)')
inorea <expr> setpriority Hints#ShowHint('setpriority','int setpriority(int which, int who, int prio)')
inorea <expr> setregid Hints#ShowHint('setregid','int setregid(gid_t rgid, gid_t egid)')
inorea <expr> setresuid Hints#ShowHint('setresuid','int setresuid(uid_t ruid, uid_t euid, uid_t suid)')
inorea <expr> setreuid Hints#ShowHint('setreuid','int setreuid(uid_t ruid, uid_t euid)')
inorea <expr> setrlimit Hints#ShowHint('setrlimit','int setrlimit(int resource, const struct rlimit * rlim)')
inorea <expr> setsid Hints#ShowHint('setsid','pid_t setsid(void)')
inorea <expr> setsockopt Hints#ShowHint('setsockopt','int setsockopt(int s, int level, int optname, const void * optval, socklen_t optlen)')
inorea <expr> set_thread_area Hints#ShowHint('set_thread_area','int set_thread_area (struct user_desc * u_info)')
inorea <expr> setuid Hints#ShowHint('setuid','int setuid(uid_t uid)')
inorea <expr> setup Hints#ShowHint('setup','int setup(void)')
inorea <expr> setxattr Hints#ShowHint('setxattr','int setxattr (const char* path, const char* name, \t\t\t const void* value, size_t size, int flags)')
inorea <expr> shmat Hints#ShowHint('shmat','void *shmat(int shmid, const void * shmaddr, int shmflg)')
inorea <expr> shmctl Hints#ShowHint('shmctl','int shmctl(int shmid, int cmd, struct shmid_ds * buf)')
inorea <expr> shmdt Hints#ShowHint('shmdt','int shmdt(const void * shmaddr)')
inorea <expr> shmget Hints#ShowHint('shmget','int shmget(key_t key, size_t size, int shmflg)')
inorea <expr> shutdown Hints#ShowHint('shutdown','int shutdown(int s, int how)')
inorea <expr> sigaction Hints#ShowHint('sigaction','int sigaction(int signum, const struct sigaction * act, struct sigaction * oldact)')
inorea <expr> signal Hints#ShowHint('signal','sighandler_t signal(int signum, sighandler_t handler)')
inorea <expr> sigpending Hints#ShowHint('sigpending','int sigpending(sigset_t * set)')
inorea <expr> sigprocmask Hints#ShowHint('sigprocmask','int sigprocmask(int how, const sigset_t * set, sigset_t * oldset)')
inorea <expr> sigqueue Hints#ShowHint('sigqueue','int sigqueue(pid_t pid, int sig, const union sigval value)')
inorea <expr> sigreturn Hints#ShowHint('sigreturn','int sigreturn(unsigned long __unused)')
inorea <expr> sigsuspend Hints#ShowHint('sigsuspend','int sigsuspend(const sigset_t * mask)')
inorea <expr> sigtimedwait Hints#ShowHint('sigtimedwait','int sigtimedwait(const sigset_t * set, siginfo_t * info, const struct timespec * timeout)')
inorea <expr> sigwaitinfo Hints#ShowHint('sigwaitinfo','int sigwaitinfo(const sigset_t * set, siginfo_t * info)')
inorea <expr> socketcall Hints#ShowHint('socketcall','int socketcall(int call, unsigned long * args)')
inorea <expr> socketpair Hints#ShowHint('socketpair','int socketpair(int d, int type, int protocol, int sv [2])')
inorea <expr> socket Hints#ShowHint('socket','int socket(int domain, int type, int protocol)')
inorea <expr> statfs Hints#ShowHint('statfs','int statfs(const char * path, struct statfs * buf)')
inorea <expr> stat Hints#ShowHint('stat','int stat(const char * path, struct stat * buf)')
inorea <expr> statvfs Hints#ShowHint('statvfs','int statvfs(const char * path, struct statvfs * buf)')
inorea <expr> stime Hints#ShowHint('stime','int stime(time_t * t)')
inorea <expr> swapoff Hints#ShowHint('swapoff','int swapoff(const char * path)')
inorea <expr> swapon Hints#ShowHint('swapon','int swapon(const char * path, int swapflags)')
inorea <expr> symlink Hints#ShowHint('symlink','int symlink(const char * oldpath, const char * newpath)')
inorea <expr> sync Hints#ShowHint('sync','void sync(void)')
inorea <expr> sys_alloc_hugepages Hints#ShowHint('sys_alloc_hugepages','asmlinkage unsigned long sys_alloc_hugepages(int key, unsigned long addr, unsigned long len, int prot, int flag)')
inorea <expr> _syscall0 Hints#ShowHint('_syscall0','_syscall0(int, setup)')
inorea <expr> _syscall0 Hints#ShowHint('_syscall0','_syscall0(pid_t,gettid)')
inorea <expr> _syscall1 Hints#ShowHint('_syscall1','_syscall1(int, _sysctl, struct __sysctl_args *, args)')
inorea <expr> _syscall2 Hints#ShowHint('_syscall2','_syscall2(int, clone, int, flags, void *, child_stack)')
inorea <expr> _syscall2 Hints#ShowHint('_syscall2','_syscall2(int,pivot_root,const char *,new_root,const char *,put_old)')
inorea <expr> _syscall2 Hints#ShowHint('_syscall2','_syscall2(int, tkill, int, tid, int, sig)')
inorea <expr> _syscall3 Hints#ShowHint('_syscall3','_syscall3(int, getdents, uint, fd, struct dirent *, dirp, uint, count)')
inorea <expr> _syscall3 Hints#ShowHint('_syscall3','_syscall3(int, modify_ldt, int, func, void *, ptr, unsigned long, bytecount)')
inorea <expr> _syscall3 Hints#ShowHint('_syscall3','_syscall3(int, readdir, unsigned int, fd, struct dirent *, dirp, unsigned int, count)')
inorea <expr> _syscall3 Hints#ShowHint('_syscall3','_syscall3(int, syslog, int, type, char *, bufp, int, len)')
inorea <expr> _syscall3 Hints#ShowHint('_syscall3','_syscall3(int, tgkill, int, tgid, int, tid, int, sig)')
inorea <expr> _syscall5 Hints#ShowHint('_syscall5','_syscall5(int, clone, int, flags, void *, child_stack, int *, parent_tidptr, struct user_desc *, newtls, int *, child_tidptr)')
inorea <expr> _syscall5 Hints#ShowHint('_syscall5','_syscall5(int, _llseek, unsigned int, fd, unsigned long, hi, unsigned long, lo, loff_t *, res, unsigned int, wh)')
inorea <expr> _syscall6 Hints#ShowHint('_syscall6','_syscall6(void *, mmap2, void *, start, size_t, length, int, prot, int, flags, int, fd, off_t, pgoffset)')
inorea <expr> _sysctl Hints#ShowHint('_sysctl','int _sysctl(struct __sysctl_args * args)')
inorea <expr> sys_free_hugepages Hints#ShowHint('sys_free_hugepages','asmlinkage int sys_free_hugepages(unsigned long addr)')
inorea <expr> sysfs Hints#ShowHint('sysfs','int sysfs(int option)')
inorea <expr> sysfs Hints#ShowHint('sysfs','int sysfs(int option, const char * fsname)')
inorea <expr> sysfs Hints#ShowHint('sysfs','int sysfs(int option, unsigned int fs_index, char * buf)')
inorea <expr> sysinfo Hints#ShowHint('sysinfo','int sysinfo(struct sysinfo * info)')
inorea <expr> syslog Hints#ShowHint('syslog','int syslog(int type, char * bufp, int len)')
inorea <expr> tgkill Hints#ShowHint('tgkill','int tgkill(int tgid, int tid, int sig)')
inorea <expr> times Hints#ShowHint('times','clock_t times(struct tms * buf)')
inorea <expr> time Hints#ShowHint('time','time_t time(time_t * t)')
inorea <expr> tkill Hints#ShowHint('tkill','int tkill(int tid, int sig)')
inorea <expr> truncate Hints#ShowHint('truncate','int truncate(const char * path, off_t length)')
inorea <expr> umask Hints#ShowHint('umask','mode_t umask(mode_t mask)')
inorea <expr> umount2 Hints#ShowHint('umount2','int umount2(const char * target, int flags)')
inorea <expr> umount Hints#ShowHint('umount','int umount(const char * target)')
inorea <expr> uname Hints#ShowHint('uname','int uname(struct utsname * buf)')
inorea <expr> unlink Hints#ShowHint('unlink','int unlink(const char * pathname)')
inorea <expr> uselib Hints#ShowHint('uselib','int uselib(const char * library)')
inorea <expr> ustat Hints#ShowHint('ustat','int ustat(dev_t dev, struct ustat * ubuf)')
inorea <expr> utimes Hints#ShowHint('utimes','int utimes(const char * filename, const struct timeval tv [2])')
inorea <expr> utime Hints#ShowHint('utime','int utime(const char * filename, const struct utimbuf * buf)')
inorea <expr> vfork Hints#ShowHint('vfork','pid_t vfork(void)')
inorea <expr> vhangup Hints#ShowHint('vhangup','int vhangup(void)')
inorea <expr> vm86old Hints#ShowHint('vm86old','int vm86old(struct vm86_struct * info)')
inorea <expr> vm86 Hints#ShowHint('vm86','int vm86(unsigned long fn, struct vm86plus_struct * v86)')
inorea <expr> void Hints#ShowHint('void','typedef void (*sighandler_t)(int)')
inorea <expr> wait3 Hints#ShowHint('wait3','pid_t wait3(int * status, int options, struct rusage * rusage)')
inorea <expr> wait4 Hints#ShowHint('wait4','pid_t wait4(pid_t pid, int * status, int options, struct rusage * rusage)')
inorea <expr> waitpid Hints#ShowHint('waitpid','pid_t waitpid(pid_t pid, int * status, int options)')
inorea <expr> wait Hints#ShowHint('wait','pid_t wait(int * status)')
inorea <expr> writev Hints#ShowHint('writev','ssize_t writev(int fd, const struct iovec * vector, int count)')
inorea <expr> write Hints#ShowHint('write','ssize_t write(int fd, const void * buf, size_t count)')

" ---------------------------------------------------------------------
"  Restore: {{{1
let &cpo= s:keepcpo
unlet s:keepcpo
" vim: ts=4 fdm=marker
