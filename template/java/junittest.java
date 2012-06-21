import junit.framework.Test;
import junit.framework.TestCase;
import junit.framework.TestSuite;
import junit.textui.TestRunner;

public class JunitTest extends TestCase {

    /*初始化TestSuite实例*/
    static private TestSuite suite = new TestSuite();

    public JunitTest(String args) {
        super(args);
    }

    /*变量初始化 */
    protected void setUp() {
    }

    /*变量清除*/
    protected void tearDown() {
    }

    /*静态方法，返回Test实例，用户run*/
    public static Test suite() {
        /*添加该类的所有测试示例*/
        //suite.addTestSuite(JunitTest.class);

        /*添加该类一个测试示例*/
        suite.addTest(new JunitTest("testDemo"));

        return suite;
    }

    /*测试示例*/
    public void testDemo() {
        boolean ok = false;

        assertEquals(false, ok);
    }

    static public void main(String[] args) {
        TestRunner.run(JunitTest.suite());
    }
}
