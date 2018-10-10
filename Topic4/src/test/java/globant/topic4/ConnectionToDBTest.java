package globant.topic4;

import java.util.ArrayList;
import static org.hamcrest.CoreMatchers.is;
import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertThat;
import org.junit.Test;

public class ConnectionToDBTest {
    
    @Test
    public void getTeacherTest() {
    ConnectionToDB ctdb = new ConnectionToDB();
    ArrayList list = ctdb.getTeacher(1);
    assertThat(list, is(ctdb.getTeacher(1)));
    }
}
