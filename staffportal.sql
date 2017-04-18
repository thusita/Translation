
CREATE TABLE `mis_staffportal_journalpub` (
  `JournalpubID` int(11) NOT NULL AUTO_INCREMENT,
  `Title_of_the_Paper` text NOT NULL,
  `Fpaper_Apaper` varchar(30) NOT NULL,
  `Co_Authors` text NOT NULL,
  `Name_of_the_Journal` varchar(255) NOT NULL,
  `Journal_ejournal` varchar(30) NOT NULL,
  `Volume` varchar(255) NOT NULL,
  `National_` varchar(30) NOT NULL,
  `International` varchar(30) NOT NULL,
  `Year_` varchar(10) NOT NULL,
  `UserID` bigint(20) NOT NULL,
   PRIMARY KEY (`JournalpubID`),
   KEY `UserID` (`UserID`),
   CONSTRAINT journalpub_ibfk_1 FOREIGN KEY (`UserID`) REFERENCES `uomuser`(`UserID`) ON DELETE CASCADE ON UPDATE CASCADE 
) ;

CREATE TABLE `mis_staffportal_conferencepub` (
  `ConferencepubID` int(11) NOT NULL AUTO_INCREMENT,
  `Title_of_the_Paper` text,
  `Fpaper_Apaper` varchar(30) NOT NULL,
  `Co_Authors` text NOT NULL,
  `Name_of_the_Conference` varchar(255) NULL,
  `Volume_No` varchar(15) NULL,
  `Page_No` varchar(15) NULL,
  `Place_Held` varchar(255) NULL,
  `Duration` varchar(255) NULL,
  `Year_` varchar(5) NULL,
  `UserID` bigint(20) NOT NULL,
   PRIMARY KEY (`ConferencepubID`),
   KEY `UserID` (`UserID`),
  CONSTRAINT conferencepub_ibfk_1 FOREIGN KEY (`UserID`) REFERENCES `uomuser`(`UserID`)
) ;

CREATE TABLE `mis_staffportal_bookpub` (
  `BookpubID` int(11) NOT NULL AUTO_INCREMENT,
  `Title` text,
  `BookChapters` varchar(30) NOT NULL,
  `Publisher` varchar(255) NULL,
  `Co_Authors` varchar(255) NULL,
  `ISBN_No` varchar(255) NULL,
  `Year_` varchar(5) NULL,
  `UserID` bigint(20) NOT NULL,
  PRIMARY KEY (`BookpubID`),
  KEY `UserID` (`UserID`),
  CONSTRAINT bookpub_ibfk_1 FOREIGN KEY (`UserID`) REFERENCES `uomuser`(`UserID`) ON DELETE CASCADE ON UPDATE CASCADE 
) ;

CREATE TABLE `mis_staffportal_partenerlab` (
  `PartenerlabID` int(11) NOT NULL AUTO_INCREMENT,
  `Name_of_the_Labrotaries_Incubator` varchar(255) NOT NULL,
  `Managing_Organisation` varchar(255) NOT NULL,
  `Year_` varchar(4) NOT NULL,
  `UserID` varchar(255) NOT NULL,
  `UserLastModifiedBy` bigint(20) NOT NULL,
  `UserLastModifiedDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
   PRIMARY KEY (`PartenerlabID`),
   KEY `UserID` (`UserID`),
  CONSTRAINT partenerlab_ibfk_1 FOREIGN KEY (`UserID`) REFERENCES `uomuser`(`UserID`) ON DELETE CASCADE ON UPDATE CASCADE 
) ;

CREATE TABLE `mis_staffportal_intproperty` (
  `IntpropertyID` int(11) NOT NULL AUTO_INCREMENT,
  `Description` text,
  `Status_` varchar(30)  NULL,
  `Patent_No` varchar(30)  NULL,
  `Commercialized_Value` varchar(30)  NULL,
  `Year_` varchar(4)  NULL,
  `UserID` bigint(20) NOT NULL,
   PRIMARY KEY (`IntpropertyID`),
   KEY `UserID` (`UserID`),
   CONSTRAINT intproperty_ibfk_1 FOREIGN KEY (`UserID`) REFERENCES `uomuser`(`UserID`) ON DELETE CASCADE ON UPDATE CASCADE 
);

CREATE TABLE `mis_staffportal_trainingcourse` (
  `TrainingcourseID` int(11) NOT NULL AUTO_INCREMENT,
  `Name_of_the_Course` text,
  `Type_of_Course` varchar(50) NULL,
  `Course_Conducted_By` varchar(255) NULL,
  `Commence_Date` varchar(10)  NULL,
  `Completion_Date` varchar(10) NULL,
  `UserID` bigint(20) NOT NULL,
   PRIMARY KEY (`TrainingcourseID`),
   KEY `UserID` (`UserID`),
   CONSTRAINT trainingcourse_ibfk_1 FOREIGN KEY (`UserID`) REFERENCES `uomuser`(`UserID`) ON DELETE CASCADE ON UPDATE CASCADE 
);

CREATE TABLE `mis_staffportal_trainingcoursepart` (
  `TrainingcoursepartID` int(11) NOT NULL AUTO_INCREMENT,
  `Name_of_the_Course` text,
  `Type_of_Course` varchar(50) NULL,
  `Course_Conducted_By` varchar(255) NULL,
  `Commence_Date` varchar(10)  NULL,
  `Completion_Date` varchar(10) NULL,
  `UserID` bigint(20) NOT NULL,
   PRIMARY KEY (`TrainingcoursepartID`),
   KEY `UserID` (`UserID`),
   CONSTRAINT trainingcoursepart_ibfk_1 FOREIGN KEY (`UserID`) REFERENCES `uomuser`(`UserID`) ON DELETE CASCADE ON UPDATE CASCADE 
);

CREATE TABLE `mis_staffportal_trainingreceived` (
  `TrainingreceivedID` int(11) NOT NULL AUTO_INCREMENT,
  `Description_of_the_Program` text,
  `Name_of_Trainer_Institution` varchar(255) NULL,
  `Date_of_Year` varchar(10) NULL,
  `UserID`  bigint(20) NOT NULL,
   PRIMARY KEY (`TrainingreceivedID`),
   KEY `UserID` (`UserID`),
   CONSTRAINT trainingreceived_ibfk_1 FOREIGN KEY (`UserID`) REFERENCES `uomuser`(`UserID`) ON DELETE CASCADE ON UPDATE CASCADE 
);

CREATE TABLE `mis_staffportal_awards` (
  `AwardsID` int(11) NOT NULL AUTO_INCREMENT,
  `Name_of_Award` text,
  `Level_` varchar(255)  NULL,
  `AwardCategory` varchar(255) NOT NULL,
  `NameoftheAwarder` text NOT NULL,
  `Country` varchar(255) NOT NULL,
  `Received_Date-of_Year` varchar(10) NULL,
  `UserID` bigint(20) NOT NULL,
   PRIMARY KEY (`AwardsID`),
   KEY `UserID` (`UserID`),
   CONSTRAINT awards_ibfk_1 FOREIGN KEY (`UserID`) REFERENCES `uomuser`(`UserID`)ON DELETE CASCADE ON UPDATE CASCADE 
);

CREATE TABLE `mis_staffportal_involvepositions` (
  `InvolvepositionsID` int(11) NOT NULL AUTO_INCREMENT,
  `Organisation` varchar(255)  NULL,
  `Designation` varchar(255)  NULL,
  `Date_of_Appointment` varchar(10)  NULL,
  `Status_` varchar(10)  NULL,
  `UserID` bigint(20) NOT NULL,
   PRIMARY KEY (`InvolvepositionsID`),
   KEY `UserID` (`UserID`),
   CONSTRAINT involvepositions_ibfk_1 FOREIGN KEY (`UserID`) REFERENCES `uomuser`(`UserID`)ON DELETE CASCADE ON UPDATE CASCADE 
);

CREATE TABLE `mis_staffportal_involvedprojects` (
  `InvolvedprojectsID` int(11) NOT NULL AUTO_INCREMENT,
  `Title_of_the_Project` varchar(255) NULL,
  `Collaborative_Institute` varchar(255) NULL,
  `Status_` varchar(10) NULL,
  `Year_` varchar(4) NULL,
  `UserID` bigint(20) NOT NULL,
   PRIMARY KEY (`InvolvedprojectsID`),
   KEY `UserID` (`UserID`),
   CONSTRAINT involvedprojects_ibfk_1 FOREIGN KEY (`UserID`) REFERENCES `uomuser`(`UserID`)ON DELETE CASCADE ON UPDATE CASCADE 
);

CREATE TABLE `mis_staffportal_involvedpolicy` (
  `InvolvedpolicyID` int(11) NOT NULL AUTO_INCREMENT,
  `Details_of_the_National_Policiy` varchar(255) DEFAULT NULL,
  `Collaborative_Institute` varchar(255) DEFAULT NULL,
  `Status_` varchar(10) DEFAULT NULL,
  `Year_` varchar(4) DEFAULT NULL,
  `UserID` bigint(20) NOT NULL,
   PRIMARY KEY (`InvolvedpolicyID`),
   KEY `UserID` (`UserID`),
   CONSTRAINT involvedpolicy_ibfk_1 FOREIGN KEY (`UserID`) REFERENCES `uomuser`(`UserID`)ON DELETE CASCADE ON UPDATE CASCADE 
);

CREATE TABLE `mis_staffportal_invintcol` (
  `InvintcolID` int(11) NOT NULL AUTO_INCREMENT,
  `Title` text,
  `Duration` int(10) NOT NULL,
  `Date_of_Signing` varchar(10) NOT NULL,
  `Institute` varchar(255) NULL,
  `Funding` varchar(255) NULL,
  `Amount` varchar(255) NULL,
  `PScientist` varchar(255) NULL,
  `CScientist` varchar(255) NULL,
  `Output` varchar(255) NULL,
  `UserID` bigint(20) NOT NULL,
   PRIMARY KEY (`InvintcolID`),
   KEY `UserID` (`UserID`),
   CONSTRAINT invintcol_ibfk_1 FOREIGN KEY (`UserID`) REFERENCES `uomuser`(`UserID`)ON DELETE CASCADE ON UPDATE CASCADE 
) ;

CREATE TABLE `mis_staffportal_adminactivities` (
  `Adminactivities` int(11) NOT NULL AUTO_INCREMENT,
  `Description_of_the_Task` text,
  `Commenced_Date` varchar(10) NOT NULL,
  `Positions` varchar(255) NULL,
  `Completion_Date` varchar(10) NULL,
  `Status` varchar(10) NOT NULL,
  `UserID` bigint(20) NOT NULL,
   PRIMARY KEY (`AdminactivitiesID`),
   KEY `UserID` (`UserID`),
   CONSTRAINT adminactivities_ibfk_1 FOREIGN KEY (`UserID`) REFERENCES `uomuser`(`UserID`)ON DELETE CASCADE ON UPDATE CASCADE 
) ;

CREATE TABLE `mis_staffportal_services` (
  `ServicesID` int(11) NOT NULL AUTO_INCREMENT,
  `Description_of_the_Service` text,
  `Name_of_the_Institution_Served` varchar(255) NULL,
  `Year_of_Service` varchar(4) NULL,
  `UserID` bigint(20) NOT NULL,
  `UserLastModifiedBy` bigint(20) NULL,
  `UserLastModifiedDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
   PRIMARY KEY (`ServicesID`),
   KEY `UserID` (`UserID`),
   CONSTRAINT services_ibfk_1 FOREIGN KEY (`UserID`) REFERENCES `uomuser`(`UserID`)ON DELETE CASCADE ON UPDATE CASCADE 
);

CREATE TABLE `mis_staffportal_reaches` (
`ResearchID` int(11) NOT NULL AUTO_INCREMENT,
`Title` text NOT NULL,
`Total_Grant_Value` int(11) NOT NULL,
`Current_Grant_Value` int(11) NOT NULL,
`Source_of_Grant` varchar(255) NOT NULL,
`Year_Commenced` varchar(15) NOT NULL,
`Duration` int(10) NOT NULL,
`Research_Satus` varchar(255) NOT NULL,
`Partners` text NOT NULL,
`Research_Output` varchar(255) NOT NULL,
`UserID` bigint(20) NOT NULL,
`UserLastModifiedBy` bigint(20)  NULL,
`UserLastModifiedDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
 PRIMARY KEY (`ResearchID`),
 KEY `UserID` (`UserID`),
 CONSTRAINT research_ibfk_1 FOREIGN KEY (`UserID`) REFERENCES `uomuser`(`UserID`) ON DELETE CASCADE ON UPDATE CASCADE 
) ;








