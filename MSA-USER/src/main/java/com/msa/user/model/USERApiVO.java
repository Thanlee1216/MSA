package com.msa.user.model;

import lombok.Data;

@Data
//@JsonNaming(CustomUpperSnakeCaseStrategy.class)
public class USERApiVO {

    String user_id;

    String pwd;

    String name;
}
