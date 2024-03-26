class JobTracker {
  int jobID;
  String jobTitle;
  String company;
  bool addJobDescription;
  String linkToJobDescription;
  bool applied;
  bool addApplicationLink;
  String linkToJobApplication;
  bool interview;
  bool addInterviewNotes;
  String interviewNotes;
  bool offerReceived;
  bool offerRejected;
  bool offerAccepted;
  bool unsuccessful;
  bool addFeedback;
  String feedback;

  JobTracker({
    required this.jobID,
    required this.jobTitle,
    required this.company,
    required this.addJobDescription,
    required this.linkToJobDescription,
    required this.applied,
    required this.addApplicationLink,
    required this.linkToJobApplication,
    required this.interview,
    required this.addInterviewNotes,
    required this.interviewNotes,
    required this.offerReceived,
    required this.offerRejected,
    required this.offerAccepted,
    required this.unsuccessful,
    required this.addFeedback,
    required this.feedback,
  });
}
