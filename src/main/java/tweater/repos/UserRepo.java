package tweater.repos;

import org.springframework.data.jpa.repository.JpaRepository;
import tweater.domain.User;

public interface UserRepo extends JpaRepository<User, Long> {
    User findByUsername (String username);

    User findByActivationCode(String code);
}
