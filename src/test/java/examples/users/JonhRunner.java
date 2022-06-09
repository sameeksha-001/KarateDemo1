package examples.users;

import com.intuit.karate.junit5.Karate;

class JonhRunner {
    
    @Karate.Test
    Karate testUsers() {
        return Karate.run("users").relativeTo(getClass());
    }    

}
