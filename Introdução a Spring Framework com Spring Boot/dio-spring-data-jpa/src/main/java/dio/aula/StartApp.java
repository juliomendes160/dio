package dio.aula;

import dio.aula.model.User;
import dio.aula.repository.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.CommandLineRunner;
import org.springframework.stereotype.Component;

import java.util.List;

@Component
public class StartApp implements CommandLineRunner {
    @Autowired
    private UserRepository repository;
    @Override
    public void run(String... args) throws Exception {
        insertUser("GLEYSON", "glysns", "dio123");
        insertUser("GLEYSON SAMPAIO", "glysns", "dio123");
        insertUser("GABRIEL NUNES", "santos", "gabriel");

        List<User> users = repository.findByNameContaining("GLEYSON");
        for(User u: users){
            System.out.println(u);
        }
    }
    private void insertUser(String name, String username, String password){
        User user = new User();
        user.setName(name);
        user.setUsername(username);
        user.setPassword(password);

        repository.save(user);

        for(User u: repository.findAll()){
            System.out.println(u);
        }
    }
}
