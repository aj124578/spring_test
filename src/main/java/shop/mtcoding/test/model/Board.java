package shop.mtcoding.test.model;

import java.sql.Timestamp;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class Board {
    private Integer id;
    private String title;
    private Integer userId;
    private Timestamp createdAt;
}
