DROP DATABASE IF EXISTS TrackIt;

CREATE DATABASE TrackIt;
USE TrackIt;

CREATE TABLE Project (
    ProjectId CHAR(50) PRIMARY KEY,
    `Name` VARCHAR(100) NOT NULL,
    Summary VARCHAR(2000) NULL,
    DueDate DATE NOT NULL,
    IsActive BOOL NOT NULL DEFAULT 1
);

CREATE TABLE Worker (
    WorkerId INT PRIMARY KEY AUTO_INCREMENT,
    FirstName VARCHAR(50) NOT NULL,
    LastName VARCHAR(50) NOT NULL
);

CREATE TABLE ProjectWorker (
    ProjectId CHAR(50) NOT NULL,
    WorkerId INT NOT NULL,
    PRIMARY KEY pk_ProjectWorker (ProjectId, WorkerId),
    FOREIGN KEY fk_ProjectWorker_Project (ProjectId)
        REFERENCES Project(ProjectId),
    FOREIGN KEY fk_ProjectWorker_Worker (WorkerId)
        REFERENCES Worker(WorkerId)
);
CREATE TABLE Task (
    TaskId INT PRIMARY KEY AUTO_INCREMENT,
    Title VARCHAR(100) NOT NULL,
    Details TEXT NULL,
    DueDate DATE NOT NULL,
    EstimatedHours DECIMAL(5, 2) NULL,
    ProjectId CHAR(50) NOT NULL,
    WorkerId INT NOT NULL,
    FOREIGN KEY fk_Task_ProjectWorker (ProjectId, WorkerId)
        REFERENCES ProjectWorker(ProjectId, WorkerId)
);

-- INSERT INTO Worker (WorkerId, FirstName, LastName)
-- VALUES (1, 'Rosemonde', 'Featherbie');

-- INSERT INTO Worker (FirstName, LastName)
-- VALUES ( 'Kingsly', 'Besantie');

-- INSERT INTO Worker (FirstName, LastName)
-- VALUES 
-- ( 'Goldi', 'Pilipets'),
-- ( 'Dorey', 'Rulf'),
-- ( 'Panchito', 'Ashtonhurst');
-- SELECT *
-- FROM Worker;

-- INSERT INTO Worker (WorkerId, FirstName, LastName)
--     VALUES (50, 'Valentino', 'Newvill');
-- SELECT *
-- FROM Worker;

-- INSERT INTO Project (ProjectId, `Name`, DueDate)
-- VALUES ('db-milestone', 'Database Material', '2018-12-31'); 

-- INSERT INTO ProjectWorker (ProjectId, WorkerId)
-- VALUES ('db-milestone', 2);