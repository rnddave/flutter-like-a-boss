import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:job_trckr/models/job_trckr.dart';

final trckrProvider =
    StateNotifierProvider<ActiveItemNotifier, List<JobTracker>>((ref) {
  return ActiveItemNotifier();
});

class ActiveItemNotifier extends StateNotifier<List<JobTracker>> {
  ActiveItemNotifier() : super([]);

  void interestStage(String jobTitle, String company) {
    state = [
      ...state,
      JobTracker(
        jobID: state.isEmpty ? 0 : state[state.length - 1].jobID + 1,
        jobTitle: jobTitle,
        company: company,
        addJobDescription: false,
        linkToJobDescription: '',
        applied: false,
        addApplicationLink: false,
        linkToJobApplication: '',
        interview: false,
        addInterviewNotes: false,
        interviewNotes: '',
        offerReceived: false,
        offerRejected: false,
        offerAccepted: false,
        unsuccessful: false,
        addFeedback: false,
        feedback: '',
      )
    ];
  }

  void interestAddDescription(
      int id, bool addJobDescription, String linkToJobDescription) {
    state = [
      for (final item in state)
        if (item.jobID == id)
          JobTracker(
            jobID: item.jobID,
            jobTitle: item.jobTitle,
            company: item.company,
            addJobDescription: true,
            linkToJobDescription: linkToJobDescription,
            applied: item.applied,
            addApplicationLink: item.addApplicationLink,
            linkToJobApplication: item.linkToJobApplication,
            interview: item.interview,
            addInterviewNotes: item.addInterviewNotes,
            interviewNotes: item.interviewNotes,
            offerReceived: item.offerReceived,
            offerRejected: item.offerRejected,
            offerAccepted: item.offerAccepted,
            unsuccessful: item.unsuccessful,
            addFeedback: item.addFeedback,
            feedback: item.feedback,
          )
        else
          item
    ];
  }

  void applicationStage(int id, bool applied) {
    state = [
      for (final item in state)
        if (item.jobID == id)
          JobTracker(
            jobID: item.jobID,
            jobTitle: item.jobTitle,
            company: item.company,
            addJobDescription: item.addJobDescription,
            linkToJobDescription: item.linkToJobDescription,
            applied: true,
            addApplicationLink: item.addApplicationLink,
            linkToJobApplication: item.linkToJobApplication,
            interview: item.interview,
            addInterviewNotes: item.addInterviewNotes,
            interviewNotes: item.interviewNotes,
            offerReceived: item.offerReceived,
            offerRejected: item.offerRejected,
            offerAccepted: item.offerAccepted,
            unsuccessful: item.unsuccessful,
            addFeedback: item.addFeedback,
            feedback: item.feedback,
          )
        else
          item
    ];
  }

  void applicationLink(int id, bool addApplicationLink,
      String linkToJobApplication) {
    state = [
      for (final item in state)
        if (item.jobID == id)
          JobTracker(
            jobID: item.jobID,
            jobTitle: item.jobTitle,
            company: item.company,
            addJobDescription: item.addJobDescription,
            linkToJobDescription: item.linkToJobDescription,
            applied: item.applied,
            addApplicationLink: true,
            linkToJobApplication: linkToJobApplication,
            interview: item.interview,
            addInterviewNotes: item.addInterviewNotes,
            interviewNotes: item.interviewNotes,
            offerReceived: item.offerReceived,
            offerRejected: item.offerRejected,
            offerAccepted: item.offerAccepted,
            unsuccessful: item.unsuccessful,
            addFeedback: item.addFeedback,
            feedback: item.feedback,
          )
        else
          item
    ];
  }

  void interviewStage(
      int id, bool interview) {
    state = [
      for (final item in state)
        if (item.jobID == id)
          JobTracker(
            jobID: item.jobID,
            jobTitle: item.jobTitle,
            company: item.company,
            addJobDescription: item.addJobDescription,
            linkToJobDescription: item.linkToJobDescription,
            applied: item.applied,
            addApplicationLink: item.addApplicationLink,
            linkToJobApplication: item.linkToJobApplication,
            interview: true,
            addInterviewNotes: item.addInterviewNotes,
            interviewNotes: item.interviewNotes,
            offerReceived: item.offerReceived,
            offerRejected: item.offerRejected,
            offerAccepted: item.offerAccepted,
            unsuccessful: item.unsuccessful,
            addFeedback: item.addFeedback,
            feedback: item.feedback,
          )
        else
          item
    ];
  }

  void interviewAddNotes(
      int id, bool addInterviewNotes, String interviewNotes) {
    state = [
      for (final item in state)
        if (item.jobID == id)
          JobTracker(
            jobID: item.jobID,
            jobTitle: item.jobTitle,
            company: item.company,
            addJobDescription: item.addJobDescription,
            linkToJobDescription: item.linkToJobDescription,
            applied: item.applied,
            addApplicationLink: item.addApplicationLink,
            linkToJobApplication: item.linkToJobApplication,
            interview: item.interview,
            addInterviewNotes: true,
            interviewNotes: interviewNotes,
            offerReceived: item.offerReceived,
            offerRejected: item.offerRejected,
            offerAccepted: item.offerAccepted,
            unsuccessful: item.unsuccessful,
            addFeedback: item.addFeedback,
            feedback: item.feedback,
          )
        else
          item
    ];
  }

  void offerStage(
      int id, bool offerReceived) {
    state = [
      for (final item in state)
        if (item.jobID == id)
          JobTracker(
            jobID: item.jobID,
            jobTitle: item.jobTitle,
            company: item.company,
            addJobDescription: item.addJobDescription,
            linkToJobDescription: item.linkToJobDescription,
            applied: item.applied,
            addApplicationLink: item.addApplicationLink,
            linkToJobApplication: item.linkToJobApplication,
            interview: item.interview,
            addInterviewNotes: item.addInterviewNotes,
            interviewNotes: item.interviewNotes,
            offerReceived: true,
            offerRejected: item.offerRejected,
            offerAccepted: item.offerAccepted,
            unsuccessful: item.unsuccessful,
            addFeedback: item.addFeedback,
            feedback: item.feedback,
          )
        else
          item
    ];
  }

  void offerStageReject(
      int id, bool offerRejected) {
    state = [
      for (final item in state)
        if (item.jobID == id)
          JobTracker(
            jobID: item.jobID,
            jobTitle: item.jobTitle,
            company: item.company,
            addJobDescription: item.addJobDescription,
            linkToJobDescription: item.linkToJobDescription,
            applied: item.applied,
            addApplicationLink: item.addApplicationLink,
            linkToJobApplication: item.linkToJobApplication,
            interview: item.interview,
            addInterviewNotes: item.addInterviewNotes,
            interviewNotes: item.interviewNotes,
            offerReceived: item.offerReceived,
            offerRejected: true,
            offerAccepted: item.offerAccepted,
            unsuccessful: item.unsuccessful,
            addFeedback: item.addFeedback,
            feedback: item.feedback,
          )
        else
          item
    ];
  }

  void offerStageAccept(
      int id, bool offerAccepted) {
    state = [
      for (final item in state)
        if (item.jobID == id)
          JobTracker(
            jobID: item.jobID,
            jobTitle: item.jobTitle,
            company: item.company,
            addJobDescription: item.addJobDescription,
            linkToJobDescription: item.linkToJobDescription,
            applied: item.applied,
            addApplicationLink: item.addApplicationLink,
            linkToJobApplication: item.linkToJobApplication,
            interview: item.interview,
            addInterviewNotes: item.addInterviewNotes,
            interviewNotes: item.interviewNotes,
            offerReceived: item.offerReceived,
            offerRejected: item.offerRejected,
            offerAccepted: true,
            unsuccessful: item.unsuccessful,
            addFeedback: item.addFeedback,
            feedback: item.feedback,
          )
        else
          item
    ];
  }

  void unluckyStage(int id, bool unsuccessful) {
    state = [
      for (final item in state)
        if (item.jobID == id)
          JobTracker(
            jobID: item.jobID,
            jobTitle: item.jobTitle,
            company: item.company,
            addJobDescription: item.addJobDescription,
            linkToJobDescription: item.linkToJobDescription,
            applied: item.applied,
            addApplicationLink: item.addApplicationLink,
            linkToJobApplication: item.linkToJobApplication,
            interview: item.interview,
            addInterviewNotes: item.addInterviewNotes,
            interviewNotes: item.interviewNotes,
            offerReceived: item.offerReceived,
            offerRejected: item.offerRejected,
            offerAccepted: item.offerAccepted,
            unsuccessful: true,
            addFeedback: item.addFeedback,
            feedback: item.feedback,
          )
        else
          item
    ];
  }

  void recordFeedback(int id, bool addFeedback, String feedback) {
    state = [
      for (final item in state)
        if (item.jobID == id)
          JobTracker(
            jobID: item.jobID,
            jobTitle: item.jobTitle,
            company: item.company,
            addJobDescription: item.addJobDescription,
            linkToJobDescription: item.linkToJobDescription,
            applied: item.applied,
            addApplicationLink: item.addApplicationLink,
            linkToJobApplication: item.linkToJobApplication,
            interview: item.interview,
            addInterviewNotes: item.addInterviewNotes,
            interviewNotes: item.interviewNotes,
            offerReceived: item.offerReceived,
            offerRejected: item.offerRejected,
            offerAccepted: item.offerAccepted,
            unsuccessful: item.unsuccessful,
            addFeedback: true,
            feedback: feedback,
          )
        else
          item
    ];
  }

  // not sure about this item; (jobtracker item) as a passed arg.
  void removeItem(int id) {
    state = state.where((item) => item.jobID != id).toList();
  }
}
