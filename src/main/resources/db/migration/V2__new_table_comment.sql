CREATE TABLE ISSUE_TRACKER.COMMENT (
  id BIGINT GENERATED BY DEFAULT AS IDENTITY,
  user BIGINT not null,
  issue BIGINT not null,
  content varchar(200) not null
);


ALTER TABLE ISSUE_TRACKER.COMMENT
ADD FOREIGN KEY (user)
REFERENCES ISSUE_TRACKER.USER(id);

ALTER TABLE ISSUE_TRACKER.COMMENT
ADD FOREIGN KEY (issue)
REFERENCES ISSUE_TRACKER.ISSUE(id);


INSERT INTO ISSUE_TRACKER.COMMENT (user, issue, content)
VALUES (
    2,
    1,
    'User: #2, Issue: 1, Junk text: YG&*TYG*&*&*UHKJVGH'
);

INSERT INTO ISSUE_TRACKER.COMMENT (user, issue, content)
VALUES (
    1,
    1,
    'User: #1, Issue: 1, Junk text: IUOI$#%#FSFDS4556H'
);

INSERT INTO ISSUE_TRACKER.COMMENT (user, issue, content)
VALUES (
    2,
    3,
    'User: #2, Issue: 3, Junk text: IUOI$#%#FSFDS4556H'
);