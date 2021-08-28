.class public Lcom/sec/internal/google/ImsCallSessionImpl;
.super Lcom/android/ims/internal/IImsCallSession$Stub;
.source "ImsCallSessionImpl.java"


# static fields
.field protected static final SET_LOCAL_CALL_PROFILE:I = 0x1

.field protected static final SET_LOCAL_REMOTE_CALL_PROFILE:I = 0x3

.field protected static final SET_REMOTE_CALL_PROFILE:I = 0x2


# instance fields
.field private final LOG_TAG:Ljava/lang/String;

.field protected mCallId:Ljava/lang/String;

.field public mCallIdInt:I

.field public mCallProfile:Landroid/telephony/ims/ImsCallProfile;

.field public final mGoogleImsService:Lcom/sec/internal/google/GoogleImsService;

.field public mImpl:Lcom/android/ims/internal/IImsCallSession;

.field public mImsVideoCallProvider:Lcom/sec/internal/google/ImsVideoCallProviderImpl;

.field public mIsCWNotified:Z

.field public mIsConferenceHost:Z

.field public mIsConferenceParticipant:Z

.field public mIsEcbmSupport:Z

.field public mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

.field protected mLocalCallProfile:Landroid/telephony/ims/ImsCallProfile;

.field protected mRemoteCallProfile:Landroid/telephony/ims/ImsCallProfile;

.field public final mRttEventListener:Lcom/sec/ims/IRttEventListener;

.field public mSession:Lcom/sec/ims/volte2/IImsCallSession;

.field public mState:I

.field protected final mVolteEventListener:Lcom/sec/ims/volte2/IImsCallSessionEventListener;

.field public final mVolteServiceModule:Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;


# direct methods
.method public constructor <init>(Landroid/telephony/ims/ImsCallProfile;Lcom/sec/ims/volte2/IImsCallSession;Landroid/telephony/ims/aidl/IImsCallSessionListener;Lcom/sec/internal/google/GoogleImsService;)V
    .locals 3
    .param p1, "profile"    # Landroid/telephony/ims/ImsCallProfile;
    .param p2, "callSession"    # Lcom/sec/ims/volte2/IImsCallSession;
    .param p3, "listener"    # Landroid/telephony/ims/aidl/IImsCallSessionListener;
    .param p4, "googleImsService"    # Lcom/sec/internal/google/GoogleImsService;

    .line 72
    invoke-direct {p0}, Lcom/android/ims/internal/IImsCallSession$Stub;-><init>()V

    .line 51
    const-string v0, "ImsCallSessionImpl"

    iput-object v0, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->LOG_TAG:Ljava/lang/String;

    .line 57
    new-instance v0, Landroid/telephony/ims/ImsCallProfile;

    const/4 v1, 0x1

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Landroid/telephony/ims/ImsCallProfile;-><init>(II)V

    iput-object v0, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mLocalCallProfile:Landroid/telephony/ims/ImsCallProfile;

    .line 58
    new-instance v0, Landroid/telephony/ims/ImsCallProfile;

    invoke-direct {v0, v1, v2}, Landroid/telephony/ims/ImsCallProfile;-><init>(II)V

    iput-object v0, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mRemoteCallProfile:Landroid/telephony/ims/ImsCallProfile;

    .line 60
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mIsConferenceHost:Z

    iput-boolean v0, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mIsConferenceParticipant:Z

    iput-boolean v0, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mIsEcbmSupport:Z

    iput-boolean v0, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mIsCWNotified:Z

    .line 66
    const-string v1, ""

    iput-object v1, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mCallId:Ljava/lang/String;

    .line 67
    const/4 v1, -0x1

    iput v1, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mCallIdInt:I

    iput v0, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mState:I

    .line 705
    new-instance v0, Lcom/sec/internal/google/ImsCallSessionImpl$1;

    invoke-direct {v0, p0}, Lcom/sec/internal/google/ImsCallSessionImpl$1;-><init>(Lcom/sec/internal/google/ImsCallSessionImpl;)V

    iput-object v0, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mRttEventListener:Lcom/sec/ims/IRttEventListener;

    .line 743
    new-instance v0, Lcom/sec/internal/google/ImsCallSessionEventListener;

    invoke-direct {v0, p0}, Lcom/sec/internal/google/ImsCallSessionEventListener;-><init>(Lcom/sec/internal/google/ImsCallSessionImpl;)V

    iput-object v0, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mVolteEventListener:Lcom/sec/ims/volte2/IImsCallSessionEventListener;

    .line 73
    iput-object p1, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    .line 74
    invoke-virtual {p0, v2}, Lcom/sec/internal/google/ImsCallSessionImpl;->setCallProfile(I)V

    .line 75
    iput-object p2, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    .line 76
    iput-object p3, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    .line 78
    iput-object p0, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mImpl:Lcom/android/ims/internal/IImsCallSession;

    .line 79
    iput-object p4, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mGoogleImsService:Lcom/sec/internal/google/GoogleImsService;

    .line 80
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getServiceModuleManager()Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;->getVolteServiceModule()Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mVolteServiceModule:Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    .line 82
    if-nez p2, :cond_0

    .line 83
    return-void

    .line 87
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    iget-object v1, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mVolteEventListener:Lcom/sec/ims/volte2/IImsCallSessionEventListener;

    invoke-interface {v0, v1}, Lcom/sec/ims/volte2/IImsCallSession;->registerSessionEventListener(Lcom/sec/ims/volte2/IImsCallSessionEventListener;)V

    .line 88
    iget-object v0, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mVolteServiceModule:Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    iget-object v1, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {v1}, Lcom/sec/ims/volte2/IImsCallSession;->getPhoneId()I

    move-result v1

    iget-object v2, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mRttEventListener:Lcom/sec/ims/IRttEventListener;

    invoke-interface {v0, v1, v2}, Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;->registerRttEventListener(ILcom/sec/ims/IRttEventListener;)V

    .line 89
    iget-object v0, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {v0}, Lcom/sec/ims/volte2/IImsCallSession;->getCallId()I

    move-result v0

    iput v0, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mCallIdInt:I

    .line 91
    if-lez v0, :cond_1

    .line 92
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mCallId:Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 95
    :cond_1
    goto :goto_0

    .line 94
    :catch_0
    move-exception v0

    .line 96
    :goto_0
    new-instance v0, Lcom/sec/internal/google/ImsVideoCallProviderImpl;

    iget-object v1, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-direct {v0, v1}, Lcom/sec/internal/google/ImsVideoCallProviderImpl;-><init>(Lcom/sec/ims/volte2/IImsCallSession;)V

    iput-object v0, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mImsVideoCallProvider:Lcom/sec/internal/google/ImsVideoCallProviderImpl;

    .line 97
    return-void
.end method

.method static synthetic access$000(Lcom/sec/internal/google/ImsCallSessionImpl;)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/google/ImsCallSessionImpl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 50
    invoke-direct {p0}, Lcom/sec/internal/google/ImsCallSessionImpl;->getSessionId()I

    move-result v0

    return v0
.end method

.method private convertDtmfToCode(C)I
    .locals 1
    .param p1, "c"    # C

    .line 601
    const/16 v0, 0x30

    if-lt p1, v0, :cond_0

    const/16 v0, 0x39

    if-gt p1, v0, :cond_0

    add-int/lit8 v0, p1, -0x30

    return v0

    .line 602
    :cond_0
    const/16 v0, 0x2a

    if-ne p1, v0, :cond_1

    const/16 v0, 0xa

    return v0

    .line 603
    :cond_1
    const/16 v0, 0x23

    if-ne p1, v0, :cond_2

    const/16 v0, 0xb

    return v0

    .line 605
    :cond_2
    const/4 v0, -0x1

    return v0
.end method

.method private convertRejectReasonFromFW(I)I
    .locals 1
    .param p1, "reason"    # I

    .line 902
    const/16 v0, 0x70

    if-eq p1, v0, :cond_6

    const/16 v0, 0x8e

    if-eq p1, v0, :cond_5

    const/16 v0, 0x90

    if-eq p1, v0, :cond_4

    const/16 v0, 0x152

    if-eq p1, v0, :cond_3

    const/16 v0, 0x154

    if-eq p1, v0, :cond_2

    const/16 v0, 0x16d

    if-eq p1, v0, :cond_1

    const/16 v0, 0xfa7

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    .line 936
    const/4 v0, -0x1

    .local v0, "rejectReason":I
    goto :goto_0

    .line 926
    .end local v0    # "rejectReason":I
    :pswitch_0
    const/16 v0, 0xc

    .line 927
    .restart local v0    # "rejectReason":I
    goto :goto_0

    .line 904
    .end local v0    # "rejectReason":I
    :pswitch_1
    const/4 v0, 0x3

    .line 905
    .restart local v0    # "rejectReason":I
    goto :goto_0

    .line 930
    .end local v0    # "rejectReason":I
    :pswitch_2
    const/16 v0, 0xd

    .line 931
    .restart local v0    # "rejectReason":I
    goto :goto_0

    .line 933
    .end local v0    # "rejectReason":I
    :cond_0
    const/16 v0, 0xf

    .line 934
    .restart local v0    # "rejectReason":I
    goto :goto_0

    .line 907
    .end local v0    # "rejectReason":I
    :cond_1
    const/16 v0, 0x10

    .line 908
    .restart local v0    # "rejectReason":I
    goto :goto_0

    .line 920
    .end local v0    # "rejectReason":I
    :cond_2
    const/16 v0, 0x9

    .line 921
    .restart local v0    # "rejectReason":I
    goto :goto_0

    .line 923
    .end local v0    # "rejectReason":I
    :cond_3
    const/4 v0, 0x2

    .line 924
    .restart local v0    # "rejectReason":I
    goto :goto_0

    .line 917
    .end local v0    # "rejectReason":I
    :cond_4
    const/16 v0, 0x8

    .line 918
    .restart local v0    # "rejectReason":I
    goto :goto_0

    .line 914
    .end local v0    # "rejectReason":I
    :cond_5
    const/4 v0, 0x7

    .line 915
    .restart local v0    # "rejectReason":I
    goto :goto_0

    .line 911
    .end local v0    # "rejectReason":I
    :cond_6
    :pswitch_3
    const/4 v0, 0x6

    .line 912
    .restart local v0    # "rejectReason":I
    nop

    .line 944
    :goto_0
    return v0

    :pswitch_data_0
    .packed-switch 0x1f6
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_0
    .end packed-switch
.end method

.method private getSessionId()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 129
    iget-object v0, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    if-nez v0, :cond_0

    .line 130
    const/4 v0, -0x1

    return v0

    .line 132
    :cond_0
    invoke-interface {v0}, Lcom/sec/ims/volte2/IImsCallSession;->getSessionId()I

    move-result v0

    return v0
.end method

.method private inviteParticipants(I)V
    .locals 1
    .param p1, "participantId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 470
    iget-object v0, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    if-nez v0, :cond_0

    .line 471
    return-void

    .line 475
    :cond_0
    :try_start_0
    invoke-interface {v0, p1}, Lcom/sec/ims/volte2/IImsCallSession;->inviteParticipants(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 477
    goto :goto_0

    .line 476
    :catch_0
    move-exception v0

    .line 478
    :goto_0
    return-void
.end method


# virtual methods
.method public accept(ILandroid/telephony/ims/ImsStreamMediaProfile;)V
    .locals 8
    .param p1, "callType"    # I
    .param p2, "profile"    # Landroid/telephony/ims/ImsStreamMediaProfile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 363
    iget-object v0, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 364
    iget-object v0, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    if-eqz v0, :cond_0

    .line 365
    new-instance v2, Landroid/telephony/ims/ImsReasonInfo;

    const/16 v3, 0x66

    invoke-direct {v2, v3, v1}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    invoke-interface {v0, v2}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionTerminated(Landroid/telephony/ims/ImsReasonInfo;)V

    .line 367
    :cond_0
    return-void

    .line 370
    :cond_1
    invoke-interface {v0}, Lcom/sec/ims/volte2/IImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/volte2/data/CallProfile;->getCallType()I

    move-result v0

    .line 371
    .local v0, "incomingCallType":I
    invoke-static {p1}, Lcom/sec/internal/google/DataTypeConvertor;->convertToSecCallType(I)I

    move-result v2

    .line 374
    .local v2, "answerCallType":I
    invoke-static {v0}, Lcom/sec/internal/helper/ImsCallUtil;->isTtyCall(I)Z

    move-result v3

    if-nez v3, :cond_2

    const/16 v3, 0xc

    if-ne v0, v3, :cond_3

    .line 375
    :cond_2
    move v2, v0

    .line 378
    :cond_3
    new-instance v3, Lcom/sec/ims/volte2/data/CallProfile;

    invoke-direct {v3}, Lcom/sec/ims/volte2/data/CallProfile;-><init>()V

    .line 379
    .local v3, "answerCallProfile":Lcom/sec/ims/volte2/data/CallProfile;
    invoke-virtual {v3, v2}, Lcom/sec/ims/volte2/data/CallProfile;->setCallType(I)V

    .line 380
    invoke-virtual {v3}, Lcom/sec/ims/volte2/data/CallProfile;->getMediaProfile()Lcom/sec/ims/volte2/data/MediaProfile;

    move-result-object v4

    iget v5, p2, Landroid/telephony/ims/ImsStreamMediaProfile;->mRttMode:I

    invoke-virtual {v4, v5}, Lcom/sec/ims/volte2/data/MediaProfile;->setRttMode(I)V

    .line 383
    :try_start_0
    iget-object v4, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {v4, v3}, Lcom/sec/ims/volte2/IImsCallSession;->accept(Lcom/sec/ims/volte2/data/CallProfile;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 388
    goto :goto_0

    .line 384
    :catch_0
    move-exception v4

    .line 385
    .local v4, "e":Landroid/os/RemoteException;
    iget-object v5, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    if-eqz v5, :cond_4

    .line 386
    new-instance v6, Landroid/telephony/ims/ImsReasonInfo;

    const/16 v7, 0x67

    invoke-direct {v6, v7, v1}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    invoke-interface {v5, v6}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionTerminated(Landroid/telephony/ims/ImsReasonInfo;)V

    .line 389
    .end local v4    # "e":Landroid/os/RemoteException;
    :cond_4
    :goto_0
    return-void
.end method

.method public cancelTransferCall()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1199
    iget-object v0, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    if-eqz v0, :cond_0

    .line 1202
    invoke-interface {v0}, Lcom/sec/ims/volte2/IImsCallSession;->cancelTransfer()V

    .line 1203
    return-void

    .line 1200
    :cond_0
    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0
.end method

.method public changeCmcErrorReason(II)Landroid/telephony/ims/ImsReasonInfo;
    .locals 1
    .param p1, "cmcType"    # I
    .param p2, "error"    # I

    .line 966
    const-string v0, ""

    invoke-virtual {p0, p1, p2, v0}, Lcom/sec/internal/google/ImsCallSessionImpl;->changeCmcErrorReason(IILjava/lang/String;)Landroid/telephony/ims/ImsReasonInfo;

    move-result-object v0

    return-object v0
.end method

.method public changeCmcErrorReason(IILjava/lang/String;)Landroid/telephony/ims/ImsReasonInfo;
    .locals 6
    .param p1, "cmcType"    # I
    .param p2, "error"    # I
    .param p3, "errorString"    # Ljava/lang/String;

    .line 970
    new-instance v0, Landroid/telephony/ims/ImsReasonInfo;

    invoke-virtual {p0, p2}, Lcom/sec/internal/google/ImsCallSessionImpl;->convertErrorReasonToFw(I)I

    move-result v1

    invoke-direct {v0, v1, p2, p3}, Landroid/telephony/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    .line 972
    .local v0, "reasonInfo":Landroid/telephony/ims/ImsReasonInfo;
    invoke-virtual {p0, p1}, Lcom/sec/internal/google/ImsCallSessionImpl;->isCmcPrimaryType(I)Z

    move-result v1

    const/16 v2, 0x45b

    const/16 v3, 0x579

    if-eqz v1, :cond_1

    .line 973
    if-eq p2, v2, :cond_0

    if-ne p2, v3, :cond_9

    .line 975
    :cond_0
    const/16 v1, 0x1f5

    iput v1, v0, Landroid/telephony/ims/ImsReasonInfo;->mCode:I

    .line 976
    const/16 v1, 0xc8

    iput v1, v0, Landroid/telephony/ims/ImsReasonInfo;->mExtraCode:I

    goto/16 :goto_0

    .line 978
    :cond_1
    invoke-virtual {p0, p1}, Lcom/sec/internal/google/ImsCallSessionImpl;->isCmcSecondaryType(I)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 979
    const/16 v1, 0x194

    const/16 v4, 0x160

    if-ne p2, v1, :cond_2

    const-string v5, "PD_NOT_REGISTERED"

    invoke-virtual {v5, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 980
    iput v4, v0, Landroid/telephony/ims/ImsReasonInfo;->mCode:I

    .line 981
    const/16 v1, 0x1771

    iput v1, v0, Landroid/telephony/ims/ImsReasonInfo;->mExtraCode:I

    goto/16 :goto_0

    .line 982
    :cond_2
    if-ne p2, v1, :cond_3

    const-string v1, "SD_NOT_REGISTERED"

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 983
    iput v4, v0, Landroid/telephony/ims/ImsReasonInfo;->mCode:I

    .line 984
    const/16 v1, 0x1774

    iput v1, v0, Landroid/telephony/ims/ImsReasonInfo;->mExtraCode:I

    goto :goto_0

    .line 985
    :cond_3
    const/16 v1, 0x1e0

    if-ne p2, v1, :cond_4

    const-string v1, "REJECT_REASON_PD_UNREACHABLE"

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 986
    iput v4, v0, Landroid/telephony/ims/ImsReasonInfo;->mCode:I

    .line 987
    const/16 v1, 0x1772

    iput v1, v0, Landroid/telephony/ims/ImsReasonInfo;->mExtraCode:I

    goto :goto_0

    .line 988
    :cond_4
    const/16 v1, 0x1e6

    if-ne p2, v1, :cond_5

    sget-object v5, Lcom/sec/internal/constants/ims/SipErrorBase;->E911_NOT_ALLOWED_ON_SD:Lcom/sec/ims/util/SipError;

    invoke-virtual {v5}, Lcom/sec/ims/util/SipError;->getReason()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 989
    iput v4, v0, Landroid/telephony/ims/ImsReasonInfo;->mCode:I

    .line 990
    const/16 v1, 0x1773

    iput v1, v0, Landroid/telephony/ims/ImsReasonInfo;->mExtraCode:I

    goto :goto_0

    .line 991
    :cond_5
    if-ne p2, v3, :cond_6

    .line 992
    iput v4, v0, Landroid/telephony/ims/ImsReasonInfo;->mCode:I

    .line 993
    iput v3, v0, Landroid/telephony/ims/ImsReasonInfo;->mExtraCode:I

    goto :goto_0

    .line 994
    :cond_6
    const/16 v3, 0x19f

    if-ne p2, v3, :cond_7

    const-string v3, "SD_NOT_SUPPORTED_VT"

    invoke-virtual {v3, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 995
    iput v4, v0, Landroid/telephony/ims/ImsReasonInfo;->mCode:I

    .line 996
    const/16 v1, 0x1775

    iput v1, v0, Landroid/telephony/ims/ImsReasonInfo;->mExtraCode:I

    goto :goto_0

    .line 997
    :cond_7
    if-ne p2, v2, :cond_8

    .line 998
    iput v4, v0, Landroid/telephony/ims/ImsReasonInfo;->mCode:I

    .line 999
    const/16 v1, 0x1776

    iput v1, v0, Landroid/telephony/ims/ImsReasonInfo;->mExtraCode:I

    goto :goto_0

    .line 1000
    :cond_8
    if-ne p2, v1, :cond_9

    const-string v1, "PD_CALL_EXISTS_ON_THE_OTHER_SLOT"

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 1001
    iput v4, v0, Landroid/telephony/ims/ImsReasonInfo;->mCode:I

    .line 1002
    const/16 v1, 0x177b

    iput v1, v0, Landroid/telephony/ims/ImsReasonInfo;->mExtraCode:I

    .line 1006
    :cond_9
    :goto_0
    return-object v0
.end method

.method public close()V
    .locals 2

    .line 110
    iget-object v0, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mGoogleImsService:Lcom/sec/internal/google/GoogleImsService;

    iget v1, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mCallIdInt:I

    invoke-virtual {v0, v1}, Lcom/sec/internal/google/GoogleImsService;->onCallClosed(I)V

    .line 112
    :try_start_0
    iget-object v0, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mImsVideoCallProvider:Lcom/sec/internal/google/ImsVideoCallProviderImpl;

    if-eqz v0, :cond_0

    .line 113
    iget-object v0, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mImsVideoCallProvider:Lcom/sec/internal/google/ImsVideoCallProviderImpl;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/internal/google/ImsVideoCallProviderImpl;->setCallback(Lcom/android/ims/internal/IImsVideoCallCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 116
    :cond_0
    goto :goto_0

    .line 115
    :catch_0
    move-exception v0

    .line 117
    :goto_0
    return-void
.end method

.method public consultativeTransfer(Lcom/android/ims/internal/IImsCallSession;)V
    .locals 3
    .param p1, "mImsCallSession"    # Lcom/android/ims/internal/IImsCallSession;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1193
    iget-object v0, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mVolteServiceModule:Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    iget-object v1, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {v1}, Lcom/sec/ims/volte2/IImsCallSession;->getCallId()I

    move-result v1

    .line 1194
    invoke-interface {p1}, Lcom/android/ims/internal/IImsCallSession;->getCallId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 1193
    invoke-interface {v0, v1, v2}, Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;->consultativeTransferCall(II)V

    .line 1195
    return-void
.end method

.method protected convertEndReasonFromFW(I)I
    .locals 2
    .param p1, "reason"    # I

    .line 948
    move v0, p1

    .line 949
    .local v0, "endReason":I
    const/16 v1, 0x1f5

    if-eq p1, v1, :cond_2

    const/16 v1, 0xfa3

    if-eq p1, v1, :cond_1

    const/16 v1, 0xfa5

    if-eq p1, v1, :cond_0

    goto :goto_0

    .line 957
    :cond_0
    const/16 v0, 0x1a

    .line 958
    goto :goto_0

    .line 954
    :cond_1
    const/16 v0, 0x14

    .line 955
    goto :goto_0

    .line 951
    :cond_2
    const/4 v0, 0x5

    .line 952
    nop

    .line 962
    :goto_0
    return v0
.end method

.method public convertErrorReasonToFw(I)I
    .locals 2
    .param p1, "error"    # I

    .line 789
    move v0, p1

    .line 790
    .local v0, "errReason":I
    const/16 v1, 0x17d

    if-eq p1, v1, :cond_3

    const/16 v1, 0x17e

    if-eq p1, v1, :cond_3

    const/16 v1, 0x457

    if-eq p1, v1, :cond_2

    const/16 v1, 0x458

    if-eq p1, v1, :cond_2

    const/16 v1, 0xbc1

    if-eq p1, v1, :cond_1

    const/16 v1, 0xbc2

    if-eq p1, v1, :cond_0

    sparse-switch p1, :sswitch_data_0

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    packed-switch p1, :pswitch_data_2

    packed-switch p1, :pswitch_data_3

    packed-switch p1, :pswitch_data_4

    goto/16 :goto_0

    .line 890
    :pswitch_0
    const/16 v0, 0x92

    .line 891
    goto/16 :goto_0

    .line 887
    :pswitch_1
    const/16 v0, 0xfa5

    .line 888
    goto/16 :goto_0

    .line 875
    :pswitch_2
    const/16 v0, 0x3f8

    .line 876
    goto/16 :goto_0

    .line 844
    :pswitch_3
    const/16 v0, 0x161

    .line 845
    goto :goto_0

    .line 841
    :pswitch_4
    const/16 v0, 0x160

    .line 842
    goto :goto_0

    .line 833
    :pswitch_5
    const/16 v0, 0x15f

    .line 834
    goto :goto_0

    .line 829
    :pswitch_6
    const/16 v0, 0x153

    .line 830
    goto :goto_0

    .line 805
    :pswitch_7
    const/16 v0, 0x156

    .line 806
    goto :goto_0

    .line 802
    :pswitch_8
    const/16 v0, 0x5eb

    .line 803
    goto :goto_0

    .line 799
    :pswitch_9
    const/16 v0, 0x14c

    .line 800
    goto :goto_0

    .line 884
    :sswitch_0
    const/16 v0, 0x7a

    .line 885
    goto :goto_0

    .line 861
    :sswitch_1
    const/16 v0, 0xca

    .line 862
    goto :goto_0

    .line 878
    :sswitch_2
    const/16 v0, 0x57f

    .line 879
    goto :goto_0

    .line 881
    :sswitch_3
    const/16 v0, 0xc2b

    .line 882
    goto :goto_0

    .line 810
    :pswitch_a
    :sswitch_4
    const/16 v0, 0x154

    .line 811
    goto :goto_0

    .line 847
    :sswitch_5
    const/16 v0, 0x169

    .line 848
    goto :goto_0

    .line 826
    :pswitch_b
    :sswitch_6
    const/16 v0, 0x152

    .line 827
    goto :goto_0

    .line 838
    :pswitch_c
    :sswitch_7
    const/16 v0, 0x162

    .line 839
    goto :goto_0

    .line 822
    :sswitch_8
    const/16 v0, 0x151

    .line 823
    goto :goto_0

    .line 819
    :sswitch_9
    const/16 v0, 0x1f8

    .line 820
    goto :goto_0

    .line 816
    :sswitch_a
    const/16 v0, 0x14e

    .line 817
    goto :goto_0

    .line 813
    :sswitch_b
    const/16 v0, 0x14f

    .line 814
    goto :goto_0

    .line 796
    :sswitch_c
    const/16 v0, 0x14b

    .line 797
    goto :goto_0

    .line 858
    :sswitch_d
    const/16 v0, 0x1fe

    .line 859
    goto :goto_0

    .line 855
    :sswitch_e
    const/16 v0, 0x1f5

    .line 856
    goto :goto_0

    .line 868
    :cond_0
    :pswitch_d
    :sswitch_f
    const/16 v0, 0x3f6

    .line 869
    goto :goto_0

    .line 872
    :cond_1
    :pswitch_e
    const/16 v0, 0x57c

    .line 873
    goto :goto_0

    .line 851
    :cond_2
    const/16 v0, 0x4b1

    .line 852
    goto :goto_0

    .line 793
    :cond_3
    const/16 v0, 0x2328

    .line 794
    nop

    .line 897
    :goto_0
    return v0

    :sswitch_data_0
    .sparse-switch
        0xc8 -> :sswitch_e
        0xd2 -> :sswitch_d
        0xdc -> :sswitch_e
        0x190 -> :sswitch_c
        0x198 -> :sswitch_b
        0x19f -> :sswitch_a
        0x1e0 -> :sswitch_9
        0x1e4 -> :sswitch_8
        0x244 -> :sswitch_7
        0x258 -> :sswitch_6
        0x25b -> :sswitch_5
        0x25e -> :sswitch_4
        0x451 -> :sswitch_3
        0x6a7 -> :sswitch_2
        0x70a -> :sswitch_1
        0x9cf -> :sswitch_0
        0xbb9 -> :sswitch_f
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x193
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_a
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1e6
        :pswitch_b
        :pswitch_6
        :pswitch_a
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1f4
        :pswitch_5
        :pswitch_5
        :pswitch_c
        :pswitch_4
        :pswitch_3
        :pswitch_c
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x9c8
        :pswitch_d
        :pswitch_e
        :pswitch_2
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x1777
        :pswitch_d
        :pswitch_d
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public deflect(Ljava/lang/String;)V
    .locals 0
    .param p1, "deflectNumber"    # Ljava/lang/String;

    .line 1181
    return-void
.end method

.method public extendToConference([Ljava/lang/String;)V
    .locals 5
    .param p1, "participants"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 549
    iget-object v0, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 550
    iget-object v0, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    if-eqz v0, :cond_0

    .line 551
    new-instance v2, Landroid/telephony/ims/ImsReasonInfo;

    const/16 v3, 0x66

    invoke-direct {v2, v3, v1}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    invoke-interface {v0, v2}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionConferenceExtendFailed(Landroid/telephony/ims/ImsReasonInfo;)V

    .line 553
    :cond_0
    return-void

    .line 557
    :cond_1
    :try_start_0
    invoke-interface {v0, p1}, Lcom/sec/ims/volte2/IImsCallSession;->extendToConference([Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 562
    goto :goto_0

    .line 558
    :catch_0
    move-exception v0

    .line 559
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v2, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    if-eqz v2, :cond_2

    .line 560
    new-instance v3, Landroid/telephony/ims/ImsReasonInfo;

    const/16 v4, 0x67

    invoke-direct {v3, v4, v1}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    invoke-interface {v2, v3}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionConferenceExtendFailed(Landroid/telephony/ims/ImsReasonInfo;)V

    .line 563
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_2
    :goto_0
    return-void
.end method

.method public getCallId()Ljava/lang/String;
    .locals 1

    .line 121
    iget-object v0, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mCallId:Ljava/lang/String;

    return-object v0
.end method

.method public getCallIdInt()I
    .locals 1

    .line 125
    iget v0, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mCallIdInt:I

    return v0
.end method

.method public getCallProfile()Landroid/telephony/ims/ImsCallProfile;
    .locals 1

    .line 137
    iget-object v0, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    return-object v0
.end method

.method public getCmcCallSessionManager()Lcom/sec/internal/google/cmc/CmcCallSessionManager;
    .locals 2

    .line 104
    const-string v0, "ImsCallSessionImpl"

    const-string v1, "getCmcCallSessionManager(), duplicate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    const/4 v0, 0x0

    return-object v0
.end method

.method public getImsStreamMediaProfile()Landroid/telephony/ims/ImsStreamMediaProfile;
    .locals 11

    .line 668
    const/4 v6, 0x3

    .local v6, "audioDirection":I
    const/4 v7, -0x1

    .line 669
    .local v7, "videoDirection":I
    const/4 v8, 0x2

    .local v8, "audioQuality":I
    const/4 v9, 0x0

    .line 671
    .local v9, "videoQuality":I
    new-instance v10, Landroid/telephony/ims/ImsStreamMediaProfile;

    iget-object v0, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iget-object v0, v0, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    .line 672
    invoke-virtual {v0}, Landroid/telephony/ims/ImsStreamMediaProfile;->getRttMode()I

    move-result v5

    move-object v0, v10

    move v1, v8

    move v2, v6

    move v3, v9

    move v4, v7

    invoke-direct/range {v0 .. v5}, Landroid/telephony/ims/ImsStreamMediaProfile;-><init>(IIIII)V

    .line 671
    return-object v10
.end method

.method public getInternalState()Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 198
    iget-object v0, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    if-nez v0, :cond_0

    .line 199
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->Idle:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    return-object v0

    .line 202
    :cond_0
    invoke-static {}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->values()[Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {v1}, Lcom/sec/ims/volte2/IImsCallSession;->getCallStateOrdinal()I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getListener()Landroid/telephony/ims/aidl/IImsCallSessionListener;
    .locals 1

    .line 250
    iget-object v0, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    return-object v0
.end method

.method public getLocalCallProfile()Landroid/telephony/ims/ImsCallProfile;
    .locals 4

    .line 142
    const/4 v0, 0x3

    .line 143
    .local v0, "callType":I
    iget-object v1, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    const-string v2, "call_mode_changeable"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/telephony/ims/ImsCallProfile;->getCallExtraBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 144
    .local v1, "modifiable":Z
    if-nez v1, :cond_0

    .line 145
    const/4 v0, 0x2

    .line 147
    :cond_0
    iget-object v2, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mLocalCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iput v0, v2, Landroid/telephony/ims/ImsCallProfile;->mCallType:I

    .line 148
    iget-object v2, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mLocalCallProfile:Landroid/telephony/ims/ImsCallProfile;

    return-object v2
.end method

.method public getPrevInternalState()Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 206
    iget-object v0, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    if-nez v0, :cond_0

    .line 207
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->Idle:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    return-object v0

    .line 210
    :cond_0
    invoke-static {}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->values()[Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {v1}, Lcom/sec/ims/volte2/IImsCallSession;->getPrevCallStateOrdinal()I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .line 182
    iget-object v0, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 183
    return-object v1

    .line 186
    :cond_0
    const-string v0, "RawInviteMessage"

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 188
    :try_start_0
    iget-object v0, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {v0}, Lcom/sec/ims/volte2/IImsCallSession;->getIncomingInviteRawSip()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 189
    :catch_0
    move-exception v0

    .line 190
    .local v0, "e":Landroid/os/RemoteException;
    return-object v1

    .line 194
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1
    return-object v1
.end method

.method public getRemoteCallProfile()Landroid/telephony/ims/ImsCallProfile;
    .locals 4

    .line 171
    const/4 v0, 0x3

    .line 172
    .local v0, "callType":I
    iget-object v1, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    const-string v2, "call_mode_changeable"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/telephony/ims/ImsCallProfile;->getCallExtraBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 173
    .local v1, "modifiable":Z
    if-nez v1, :cond_0

    .line 174
    const/4 v0, 0x2

    .line 176
    :cond_0
    iget-object v2, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mRemoteCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iput v0, v2, Landroid/telephony/ims/ImsCallProfile;->mCallType:I

    .line 177
    iget-object v2, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mRemoteCallProfile:Landroid/telephony/ims/ImsCallProfile;

    return-object v2
.end method

.method public getState()I
    .locals 1

    .line 215
    iget-boolean v0, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mIsConferenceParticipant:Z

    if-eqz v0, :cond_0

    .line 216
    const/16 v0, 0x8

    return v0

    .line 219
    :cond_0
    iget v0, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mState:I

    return v0
.end method

.method public getTtyModeFromCallType(II)I
    .locals 2
    .param p1, "phoneId"    # I
    .param p2, "callType"    # I

    .line 1226
    const/4 v0, 0x0

    .line 1227
    .local v0, "ttyModeFromCallType":I
    iget-object v1, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mVolteServiceModule:Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    if-nez v1, :cond_0

    .line 1228
    return v0

    .line 1231
    :cond_0
    invoke-interface {v1, p1}, Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;->getTtyMode(I)I

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 1233
    .local v1, "isTtySettingOff":Z
    :goto_0
    if-eqz v1, :cond_2

    .line 1234
    packed-switch p2, :pswitch_data_0

    .line 1245
    const/4 v0, 0x0

    goto :goto_1

    .line 1242
    :pswitch_0
    const/4 v0, 0x3

    .line 1243
    goto :goto_1

    .line 1239
    :pswitch_1
    const/4 v0, 0x2

    .line 1240
    goto :goto_1

    .line 1236
    :pswitch_2
    const/4 v0, 0x1

    .line 1250
    :cond_2
    :goto_1
    return v0

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getVideoCallProvider()Lcom/android/ims/internal/IImsVideoCallProvider;
    .locals 1

    .line 664
    iget-object v0, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mImsVideoCallProvider:Lcom/sec/internal/google/ImsVideoCallProviderImpl;

    return-object v0
.end method

.method public hold(Landroid/telephony/ims/ImsStreamMediaProfile;)V
    .locals 5
    .param p1, "profile"    # Landroid/telephony/ims/ImsStreamMediaProfile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 433
    iget-object v0, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 434
    iget-object v0, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    if-eqz v0, :cond_0

    .line 435
    new-instance v2, Landroid/telephony/ims/ImsReasonInfo;

    const/16 v3, 0x66

    invoke-direct {v2, v3, v1}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    invoke-interface {v0, v2}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionHoldFailed(Landroid/telephony/ims/ImsReasonInfo;)V

    .line 437
    :cond_0
    return-void

    .line 441
    :cond_1
    :try_start_0
    new-instance v0, Lcom/sec/ims/volte2/data/MediaProfile;

    invoke-direct {v0}, Lcom/sec/ims/volte2/data/MediaProfile;-><init>()V

    .line 443
    .local v0, "mp":Lcom/sec/ims/volte2/data/MediaProfile;
    iget-object v2, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {v2, v0}, Lcom/sec/ims/volte2/IImsCallSession;->hold(Lcom/sec/ims/volte2/data/MediaProfile;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 448
    .end local v0    # "mp":Lcom/sec/ims/volte2/data/MediaProfile;
    goto :goto_0

    .line 444
    :catch_0
    move-exception v0

    .line 445
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v2, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    if-eqz v2, :cond_2

    .line 446
    new-instance v3, Landroid/telephony/ims/ImsReasonInfo;

    const/16 v4, 0x67

    invoke-direct {v3, v4, v1}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    invoke-interface {v2, v3}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionHoldFailed(Landroid/telephony/ims/ImsReasonInfo;)V

    .line 449
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_2
    :goto_0
    return-void
.end method

.method public initP2pImpl()V
    .locals 2

    .line 100
    const-string v0, "ImsCallSessionImpl"

    const-string v1, "initP2pImpl(), duplicate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    return-void
.end method

.method public inviteParticipants([Ljava/lang/String;)V
    .locals 1
    .param p1, "participants"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 568
    iget-object v0, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    if-nez v0, :cond_0

    .line 569
    return-void

    .line 573
    :cond_0
    :try_start_0
    invoke-interface {v0, p1}, Lcom/sec/ims/volte2/IImsCallSession;->extendToConference([Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 575
    goto :goto_0

    .line 574
    :catch_0
    move-exception v0

    .line 576
    :goto_0
    return-void
.end method

.method public isCmcPrimaryType(I)Z
    .locals 2
    .param p1, "cmcType"    # I

    .line 1254
    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v1, 0x3

    if-eq p1, v1, :cond_0

    const/4 v1, 0x5

    if-eq p1, v1, :cond_0

    const/4 v1, 0x7

    if-eq p1, v1, :cond_0

    .line 1263
    const/4 v0, 0x0

    return v0

    .line 1259
    :cond_0
    return v0
.end method

.method public isCmcSecondaryType(I)Z
    .locals 1
    .param p1, "cmcType"    # I

    .line 1279
    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    const/16 v0, 0x8

    if-eq p1, v0, :cond_0

    .line 1287
    const/4 v0, 0x0

    return v0

    .line 1283
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public isEmergencyCall()Z
    .locals 2

    .line 654
    iget-object v0, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    const-string v1, "e_call"

    invoke-virtual {v0, v1}, Landroid/telephony/ims/ImsCallProfile;->getCallExtraBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iget v0, v0, Landroid/telephony/ims/ImsCallProfile;->mServiceType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public isInCall()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 224
    iget v0, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mState:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    if-eqz v0, :cond_0

    .line 225
    sget-object v0, Lcom/sec/internal/google/ImsCallSessionImpl$2;->$SwitchMap$com$sec$internal$constants$ims$servicemodules$volte2$CallConstants$STATE:[I

    invoke-virtual {p0}, Lcom/sec/internal/google/ImsCallSessionImpl;->getInternalState()Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 238
    :pswitch_0
    const/4 v0, 0x1

    return v0

    .line 241
    :cond_0
    :goto_0
    const/4 v0, 0x0

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public isMultiparty()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 650
    iget-object v0, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/sec/ims/volte2/IImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/volte2/data/CallProfile;->isConferenceCall()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isP2pPrimaryType(I)Z
    .locals 1
    .param p1, "cmcType"    # I

    .line 1267
    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    const/4 v0, 0x7

    if-eq p1, v0, :cond_0

    .line 1275
    const/4 v0, 0x0

    return v0

    .line 1271
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public isWifiCall()Z
    .locals 3

    .line 659
    const/16 v0, 0x12

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    const-string v2, "CallRadioTech"

    invoke-virtual {v1, v2}, Landroid/telephony/ims/ImsCallProfile;->getCallExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public merge()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 482
    iget-object v0, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    const/16 v1, 0x66

    const/4 v2, 0x0

    if-eqz v0, :cond_8

    iget-object v3, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mVolteServiceModule:Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    if-nez v3, :cond_0

    goto/16 :goto_3

    .line 490
    :cond_0
    invoke-interface {v0}, Lcom/sec/ims/volte2/IImsCallSession;->getCallId()I

    move-result v0

    .line 492
    .local v0, "hostId":I
    iget-object v3, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mGoogleImsService:Lcom/sec/internal/google/GoogleImsService;

    invoke-virtual {v3}, Lcom/sec/internal/google/GoogleImsService;->hasConferenceHost()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 493
    iget-object v3, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mGoogleImsService:Lcom/sec/internal/google/GoogleImsService;

    invoke-virtual {v3}, Lcom/sec/internal/google/GoogleImsService;->getConferenceHost()Lcom/sec/internal/google/ImsCallSessionImpl;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/internal/google/ImsCallSessionImpl;->getCallIdInt()I

    move-result v0

    .line 496
    :cond_1
    iget-object v3, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mVolteServiceModule:Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    iget-object v4, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {v4}, Lcom/sec/ims/volte2/IImsCallSession;->getPhoneId()I

    move-result v4

    invoke-interface {v3, v4, v0}, Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;->getParticipantIdForMerge(II)I

    move-result v3

    .line 498
    .local v3, "participantId":I
    const/4 v4, -0x1

    if-ne v3, v4, :cond_3

    .line 499
    iget-object v4, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    if-eqz v4, :cond_2

    .line 500
    new-instance v5, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v5, v1, v2}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    invoke-interface {v4, v5}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionMergeFailed(Landroid/telephony/ims/ImsReasonInfo;)V

    .line 502
    :cond_2
    return-void

    .line 505
    :cond_3
    iget-object v4, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mGoogleImsService:Lcom/sec/internal/google/GoogleImsService;

    invoke-virtual {v4}, Lcom/sec/internal/google/GoogleImsService;->hasConferenceHost()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 506
    iget-object v1, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mGoogleImsService:Lcom/sec/internal/google/GoogleImsService;

    invoke-virtual {v1, v2}, Lcom/sec/internal/google/GoogleImsService;->setInitialMerge(Z)V

    .line 507
    iget-object v1, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mGoogleImsService:Lcom/sec/internal/google/GoogleImsService;

    invoke-virtual {v1}, Lcom/sec/internal/google/GoogleImsService;->getConferenceHost()Lcom/sec/internal/google/ImsCallSessionImpl;

    move-result-object v1

    .line 508
    .local v1, "host":Lcom/sec/internal/google/ImsCallSessionImpl;
    invoke-direct {v1, v3}, Lcom/sec/internal/google/ImsCallSessionImpl;->inviteParticipants(I)V

    .line 509
    .end local v1    # "host":Lcom/sec/internal/google/ImsCallSessionImpl;
    goto/16 :goto_2

    .line 510
    :cond_4
    iget-object v4, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mVolteServiceModule:Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    iget-object v5, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {v5}, Lcom/sec/ims/volte2/IImsCallSession;->getPhoneId()I

    move-result v5

    invoke-interface {v4, v5}, Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;->getTtyMode(I)I

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_5

    move v4, v5

    goto :goto_0

    :cond_5
    move v4, v2

    .line 511
    .local v4, "isTtyMode":Z
    :goto_0
    iget-object v6, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {v6}, Lcom/sec/ims/volte2/IImsCallSession;->getPhoneId()I

    move-result v6

    iget-object v7, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-static {v6, v7, v4}, Lcom/sec/internal/google/DataTypeConvertor;->convertToSecCallProfile(ILandroid/telephony/ims/ImsCallProfile;Z)Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v6

    .line 512
    .local v6, "callProfile":Lcom/sec/ims/volte2/data/CallProfile;
    invoke-virtual {v6, v5}, Lcom/sec/ims/volte2/data/CallProfile;->setConferenceCall(I)V

    .line 513
    iget-object v7, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {v7}, Lcom/sec/ims/volte2/IImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/ims/volte2/data/CallProfile;->getLineMsisdn()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/sec/ims/volte2/data/CallProfile;->setLineMsisdn(Ljava/lang/String;)V

    .line 514
    iget-object v7, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {v7}, Lcom/sec/ims/volte2/IImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/ims/volte2/data/CallProfile;->getOriginatingUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/sec/ims/volte2/data/CallProfile;->setOriginatingUri(Lcom/sec/ims/util/ImsUri;)V

    .line 516
    const/4 v7, 0x0

    .line 519
    .local v7, "confSession":Lcom/sec/ims/volte2/IImsCallSession;
    :try_start_0
    iget-object v8, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mVolteServiceModule:Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    invoke-interface {v8, v6}, Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;->createSession(Lcom/sec/ims/volte2/data/CallProfile;)Lcom/sec/ims/volte2/IImsCallSession;

    move-result-object v8
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v7, v8

    .line 521
    goto :goto_1

    .line 520
    :catch_0
    move-exception v8

    .line 523
    :goto_1
    if-nez v7, :cond_7

    .line 524
    iget-object v5, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    if-eqz v5, :cond_6

    .line 525
    new-instance v8, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v8, v1, v2}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    invoke-interface {v5, v8}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionMergeFailed(Landroid/telephony/ims/ImsReasonInfo;)V

    .line 527
    :cond_6
    return-void

    .line 530
    :cond_7
    iget-object v1, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    const-string v2, "CallRadioTech"

    invoke-virtual {v1, v2}, Landroid/telephony/ims/ImsCallProfile;->getCallExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x12

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    invoke-interface {v7, v1}, Lcom/sec/ims/volte2/IImsCallSession;->setEpdgState(Z)V

    .line 531
    iput-boolean v5, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mIsConferenceHost:Z

    .line 532
    iget-object v1, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mGoogleImsService:Lcom/sec/internal/google/GoogleImsService;

    invoke-virtual {v1, v5}, Lcom/sec/internal/google/GoogleImsService;->setInitialMerge(Z)V

    .line 533
    iget-object v1, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mGoogleImsService:Lcom/sec/internal/google/GoogleImsService;

    invoke-virtual {v1, p0}, Lcom/sec/internal/google/GoogleImsService;->setConferenceHost(Lcom/sec/internal/google/ImsCallSessionImpl;)V

    .line 535
    new-instance v1, Lcom/sec/internal/google/ImsCallSessionImpl;

    iget-object v2, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    const/4 v5, 0x0

    iget-object v8, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mGoogleImsService:Lcom/sec/internal/google/GoogleImsService;

    invoke-direct {v1, v2, v7, v5, v8}, Lcom/sec/internal/google/ImsCallSessionImpl;-><init>(Landroid/telephony/ims/ImsCallProfile;Lcom/sec/ims/volte2/IImsCallSession;Landroid/telephony/ims/aidl/IImsCallSessionListener;Lcom/sec/internal/google/GoogleImsService;)V

    .line 536
    .local v1, "conference":Lcom/sec/internal/google/ImsCallSessionImpl;
    invoke-interface {v7, v3, v0}, Lcom/sec/ims/volte2/IImsCallSession;->merge(II)V

    .line 537
    iget-object v2, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    invoke-virtual {v1}, Lcom/sec/internal/google/ImsCallSessionImpl;->getCallProfile()Landroid/telephony/ims/ImsCallProfile;

    move-result-object v5

    invoke-interface {v2, v1, v5}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionMergeStarted(Lcom/android/ims/internal/IImsCallSession;Landroid/telephony/ims/ImsCallProfile;)V

    .line 539
    .end local v1    # "conference":Lcom/sec/internal/google/ImsCallSessionImpl;
    .end local v4    # "isTtyMode":Z
    .end local v6    # "callProfile":Lcom/sec/ims/volte2/data/CallProfile;
    .end local v7    # "confSession":Lcom/sec/ims/volte2/IImsCallSession;
    :goto_2
    return-void

    .line 483
    .end local v0    # "hostId":I
    .end local v3    # "participantId":I
    :cond_8
    :goto_3
    iget-object v0, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    if-eqz v0, :cond_9

    .line 484
    new-instance v3, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v3, v1, v2}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    invoke-interface {v0, v3}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionMergeFailed(Landroid/telephony/ims/ImsReasonInfo;)V

    .line 486
    :cond_9
    return-void
.end method

.method public onSuppServiceReceived(II)V
    .locals 8
    .param p1, "notificationType"    # I
    .param p2, "code"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 700
    new-instance v7, Landroid/telephony/ims/ImsSuppServiceNotification;

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, v7

    move v1, p1

    move v2, p2

    invoke-direct/range {v0 .. v6}, Landroid/telephony/ims/ImsSuppServiceNotification;-><init>(IIIILjava/lang/String;[Ljava/lang/String;)V

    .line 702
    .local v0, "suppServiceNoti":Landroid/telephony/ims/ImsSuppServiceNotification;
    iget-object v1, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    invoke-interface {v1, v0}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionSuppServiceReceived(Landroid/telephony/ims/ImsSuppServiceNotification;)V

    .line 703
    return-void
.end method

.method public participantStatus(I)Ljava/lang/String;
    .locals 1
    .param p1, "status"    # I

    .line 1207
    packed-switch p1, :pswitch_data_0

    .line 1221
    const-string/jumbo v0, "pending"

    return-object v0

    .line 1219
    :pswitch_0
    const-string v0, "muted-via-focus"

    return-object v0

    .line 1217
    :pswitch_1
    const-string v0, "alerting"

    return-object v0

    .line 1215
    :pswitch_2
    const-string v0, "disconnected"

    return-object v0

    .line 1213
    :pswitch_3
    const-string v0, "disconnecting"

    return-object v0

    .line 1211
    :pswitch_4
    const-string v0, "connected"

    return-object v0

    .line 1209
    :pswitch_5
    const-string v0, "dialing-out"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public reject(I)V
    .locals 5
    .param p1, "reason"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 393
    iget-object v0, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 394
    iget-object v0, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    if-eqz v0, :cond_0

    .line 395
    new-instance v2, Landroid/telephony/ims/ImsReasonInfo;

    const/16 v3, 0x66

    invoke-direct {v2, v3, v1}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    invoke-interface {v0, v2}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionTerminated(Landroid/telephony/ims/ImsReasonInfo;)V

    .line 397
    :cond_0
    return-void

    .line 401
    :cond_1
    :try_start_0
    invoke-direct {p0, p1}, Lcom/sec/internal/google/ImsCallSessionImpl;->convertRejectReasonFromFW(I)I

    move-result v2

    invoke-interface {v0, v2}, Lcom/sec/ims/volte2/IImsCallSession;->reject(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 406
    goto :goto_0

    .line 402
    :catch_0
    move-exception v0

    .line 403
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v2, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    if-eqz v2, :cond_2

    .line 404
    new-instance v3, Landroid/telephony/ims/ImsReasonInfo;

    const/16 v4, 0x67

    invoke-direct {v3, v4, v1}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    invoke-interface {v2, v3}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionTerminated(Landroid/telephony/ims/ImsReasonInfo;)V

    .line 407
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_2
    :goto_0
    return-void
.end method

.method public removeParticipants([Ljava/lang/String;)V
    .locals 7
    .param p1, "participants"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 580
    iget-object v0, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    if-nez v0, :cond_0

    .line 581
    return-void

    .line 585
    :cond_0
    :try_start_0
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    .line 586
    .local v2, "participant":Ljava/lang/String;
    iget-object v3, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mGoogleImsService:Lcom/sec/internal/google/GoogleImsService;

    invoke-virtual {v3, v2}, Lcom/sec/internal/google/GoogleImsService;->getParticipantId(Ljava/lang/String;)I

    move-result v3

    .line 587
    .local v3, "participantId":I
    iget-object v4, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mGoogleImsService:Lcom/sec/internal/google/GoogleImsService;

    const-string v5, "disconnecting"

    const/4 v6, 0x3

    invoke-virtual {v4, v3, v5, v6}, Lcom/sec/internal/google/GoogleImsService;->updateParticipant(ILjava/lang/String;I)V

    .line 588
    iget-object v4, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {v4, v3}, Lcom/sec/ims/volte2/IImsCallSession;->removeParticipants(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 585
    .end local v2    # "participant":Ljava/lang/String;
    .end local v3    # "participantId":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 591
    :cond_1
    goto :goto_1

    .line 590
    :catch_0
    move-exception v0

    .line 598
    :goto_1
    return-void
.end method

.method public resume(Landroid/telephony/ims/ImsStreamMediaProfile;)V
    .locals 5
    .param p1, "profile"    # Landroid/telephony/ims/ImsStreamMediaProfile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 453
    iget-object v0, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 454
    iget-object v0, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    if-eqz v0, :cond_0

    .line 455
    new-instance v2, Landroid/telephony/ims/ImsReasonInfo;

    const/16 v3, 0x66

    invoke-direct {v2, v3, v1}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    invoke-interface {v0, v2}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionResumeFailed(Landroid/telephony/ims/ImsReasonInfo;)V

    .line 457
    :cond_0
    return-void

    .line 461
    :cond_1
    :try_start_0
    invoke-interface {v0}, Lcom/sec/ims/volte2/IImsCallSession;->resume()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 466
    goto :goto_0

    .line 462
    :catch_0
    move-exception v0

    .line 463
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v2, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    if-eqz v2, :cond_2

    .line 464
    new-instance v3, Landroid/telephony/ims/ImsReasonInfo;

    const/16 v4, 0x67

    invoke-direct {v3, v4, v1}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    invoke-interface {v2, v3}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionResumeFailed(Landroid/telephony/ims/ImsReasonInfo;)V

    .line 467
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_2
    :goto_0
    return-void
.end method

.method public sendDtmf(CLandroid/os/Message;)V
    .locals 4
    .param p1, "c"    # C
    .param p2, "result"    # Landroid/os/Message;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 610
    iget-object v0, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    if-nez v0, :cond_0

    .line 611
    return-void

    .line 614
    :cond_0
    invoke-direct {p0, p1}, Lcom/sec/internal/google/ImsCallSessionImpl;->convertDtmfToCode(C)I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/sec/ims/volte2/IImsCallSession;->sendDtmf(IILandroid/os/Message;)V

    .line 616
    if-eqz p2, :cond_1

    iget-object v0, p2, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    if-eqz v0, :cond_1

    .line 617
    iget-object v0, p2, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-virtual {v0, p2}, Landroid/os/Messenger;->send(Landroid/os/Message;)V

    .line 619
    :cond_1
    return-void
.end method

.method public sendRttMessage(Ljava/lang/String;)V
    .locals 2
    .param p1, "rttMessage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1152
    iget-object v0, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-interface {v0, p1, v1}, Lcom/sec/ims/volte2/IImsCallSession;->sendText(Ljava/lang/String;I)V

    .line 1153
    return-void
.end method

.method public sendRttModifyRequest(Landroid/telephony/ims/ImsCallProfile;)V
    .locals 3
    .param p1, "to"    # Landroid/telephony/ims/ImsCallProfile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1163
    iget-object v0, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mVolteServiceModule:Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    iget-object v1, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {v1}, Lcom/sec/ims/volte2/IImsCallSession;->getCallId()I

    move-result v1

    iget-object v2, p1, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    invoke-virtual {v2}, Landroid/telephony/ims/ImsStreamMediaProfile;->isRttCall()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;->sendRttSessionModifyRequest(IZ)I

    .line 1164
    return-void
.end method

.method public sendRttModifyResponse(Z)V
    .locals 2
    .param p1, "response"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1174
    iget-object v0, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iget-object v0, v0, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    invoke-virtual {v0, p1}, Landroid/telephony/ims/ImsStreamMediaProfile;->setRttMode(I)V

    .line 1175
    iget-object v0, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mVolteServiceModule:Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    iget-object v1, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {v1}, Lcom/sec/ims/volte2/IImsCallSession;->getCallId()I

    move-result v1

    invoke-interface {v0, v1, p1}, Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;->sendRttSessionModifyResponse(IZ)V

    .line 1176
    return-void
.end method

.method public sendUssd(Ljava/lang/String;)V
    .locals 2
    .param p1, "ussdMessage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 641
    iget-object v0, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    if-nez v0, :cond_0

    .line 642
    return-void

    .line 645
    :cond_0
    const/4 v1, 0x2

    invoke-interface {v0, v1, p1}, Lcom/sec/ims/volte2/IImsCallSession;->info(ILjava/lang/String;)V

    .line 646
    return-void
.end method

.method protected setCallProfile(I)V
    .locals 4
    .param p1, "capability"    # I

    .line 152
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 153
    .local v0, "p":Landroid/os/Parcel;
    iget-object v1, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/telephony/ims/ImsCallProfile;->writeToParcel(Landroid/os/Parcel;I)V

    .line 154
    and-int/lit8 v1, p1, 0x1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    .line 155
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 156
    sget-object v1, Landroid/telephony/ims/ImsCallProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/ims/ImsCallProfile;

    iput-object v1, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mLocalCallProfile:Landroid/telephony/ims/ImsCallProfile;

    .line 157
    iget-object v3, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iget v3, v3, Landroid/telephony/ims/ImsCallProfile;->mRestrictCause:I

    iput v3, v1, Landroid/telephony/ims/ImsCallProfile;->mRestrictCause:I

    .line 158
    iget-object v1, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mLocalCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iget-object v1, v1, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    iget-object v3, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iget-object v3, v3, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    invoke-virtual {v1, v3}, Landroid/telephony/ims/ImsStreamMediaProfile;->copyFrom(Landroid/telephony/ims/ImsStreamMediaProfile;)V

    .line 160
    :cond_0
    and-int/lit8 v1, p1, 0x2

    const/4 v3, 0x2

    if-ne v1, v3, :cond_1

    .line 161
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 162
    sget-object v1, Landroid/telephony/ims/ImsCallProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/ims/ImsCallProfile;

    iput-object v1, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mRemoteCallProfile:Landroid/telephony/ims/ImsCallProfile;

    .line 163
    iget-object v2, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iget v2, v2, Landroid/telephony/ims/ImsCallProfile;->mRestrictCause:I

    iput v2, v1, Landroid/telephony/ims/ImsCallProfile;->mRestrictCause:I

    .line 164
    iget-object v1, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mRemoteCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iget-object v1, v1, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    iget-object v2, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iget-object v2, v2, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    invoke-virtual {v1, v2}, Landroid/telephony/ims/ImsStreamMediaProfile;->copyFrom(Landroid/telephony/ims/ImsStreamMediaProfile;)V

    .line 166
    :cond_1
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 167
    return-void
.end method

.method public setListener(Landroid/telephony/ims/aidl/IImsCallSessionListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/telephony/ims/aidl/IImsCallSessionListener;

    .line 246
    iput-object p1, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    .line 247
    return-void
.end method

.method public setMute(Z)V
    .locals 0
    .param p1, "muted"    # Z

    .line 255
    return-void
.end method

.method public start(Ljava/lang/String;Landroid/telephony/ims/ImsCallProfile;)V
    .locals 12
    .param p1, "callee"    # Ljava/lang/String;
    .param p2, "profile"    # Landroid/telephony/ims/ImsCallProfile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 259
    iget-object v0, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mVolteServiceModule:Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    if-nez v0, :cond_0

    goto/16 :goto_4

    .line 266
    :cond_0
    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mState:I

    .line 267
    iput-object p2, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    .line 268
    const/4 v2, 0x3

    invoke-virtual {p0, v2}, Lcom/sec/internal/google/ImsCallSessionImpl;->setCallProfile(I)V

    .line 270
    iget-object v2, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {v2}, Lcom/sec/ims/volte2/IImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v2

    .line 271
    .local v2, "cp":Lcom/sec/ims/volte2/data/CallProfile;
    invoke-virtual {v2, p1}, Lcom/sec/ims/volte2/data/CallProfile;->setDialingNumber(Ljava/lang/String;)V

    .line 273
    invoke-virtual {p0}, Lcom/sec/internal/google/ImsCallSessionImpl;->isEmergencyCall()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 274
    iget-object v3, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iget-object v4, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {v4}, Lcom/sec/ims/volte2/IImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/ims/volte2/data/CallProfile;->getRadioTech()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "CallRadioTech"

    invoke-virtual {v3, v5, v4}, Landroid/telephony/ims/ImsCallProfile;->setCallExtra(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    :cond_1
    iget-object v3, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mVolteServiceModule:Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    iget-object v4, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {v4}, Lcom/sec/ims/volte2/IImsCallSession;->getPhoneId()I

    move-result v4

    iget-object v5, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iget-object v5, v5, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    invoke-virtual {v5}, Landroid/telephony/ims/ImsStreamMediaProfile;->isRttCall()Z

    move-result v5

    invoke-interface {v3, v4, v5}, Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;->setAutomaticMode(IZ)V

    .line 278
    invoke-virtual {v2}, Lcom/sec/ims/volte2/data/CallProfile;->getMediaProfile()Lcom/sec/ims/volte2/data/MediaProfile;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iget-object v4, v4, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    invoke-virtual {v4}, Landroid/telephony/ims/ImsStreamMediaProfile;->getRttMode()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/sec/ims/volte2/data/MediaProfile;->setRttMode(I)V

    .line 280
    iget-object v3, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    const-string v4, "CallPull"

    invoke-virtual {v3, v4}, Landroid/telephony/ims/ImsCallProfile;->getCallExtraBoolean(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 281
    iget-object v3, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iget-object v3, v3, Landroid/telephony/ims/ImsCallProfile;->mCallExtras:Landroid/os/Bundle;

    const-string v4, "android.telephony.ims.extra.OEM_EXTRAS"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    .line 282
    .local v3, "oemExtras":Landroid/os/Bundle;
    iget-object v4, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mVolteServiceModule:Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    iget-object v5, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {v5}, Lcom/sec/ims/volte2/IImsCallSession;->getPhoneId()I

    move-result v5

    invoke-interface {v4, v5}, Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;->getLastDialogEvent(I)Lcom/sec/ims/DialogEvent;

    move-result-object v4

    .line 283
    .local v4, "de":Lcom/sec/ims/DialogEvent;
    const/16 v5, 0x65

    .line 285
    .local v5, "pullFailReason":I
    if-eqz v4, :cond_5

    if-eqz v3, :cond_5

    .line 286
    const-string v6, "android.telephony.ImsExternalCallTracker.extra.EXTERNAL_CALL_ID"

    invoke-virtual {v3, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    .line 288
    .local v6, "dialogId":I
    invoke-virtual {v4}, Lcom/sec/ims/DialogEvent;->getDialogList()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/sec/ims/Dialog;

    .line 289
    .local v8, "pullTarget":Lcom/sec/ims/Dialog;
    if-nez v8, :cond_2

    .line 290
    goto :goto_0

    .line 293
    :cond_2
    const/4 v9, -0x1

    .line 294
    .local v9, "targetDialogId":I
    iget-object v10, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {v10}, Lcom/sec/ims/volte2/IImsCallSession;->getPhoneId()I

    move-result v10

    invoke-static {v10}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v10

    .line 295
    .local v10, "mno":Lcom/sec/internal/constants/Mno;
    sget-object v11, Lcom/sec/internal/constants/Mno;->VZW:Lcom/sec/internal/constants/Mno;

    if-ne v10, v11, :cond_3

    .line 296
    invoke-virtual {v8}, Lcom/sec/ims/Dialog;->getSipCallId()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/sec/internal/helper/ImsCallUtil;->getIdForString(Ljava/lang/String;)I

    move-result v9

    goto :goto_1

    .line 299
    :cond_3
    :try_start_0
    invoke-virtual {v8}, Lcom/sec/ims/Dialog;->getDialogId()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1

    move v9, v11

    .line 302
    nop

    .line 305
    :goto_1
    if-ne v6, v9, :cond_4

    .line 306
    invoke-virtual {v8}, Lcom/sec/ims/Dialog;->getSipCallId()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_4

    .line 307
    invoke-virtual {v8}, Lcom/sec/ims/Dialog;->getSipLocalTag()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_4

    .line 308
    invoke-virtual {v8}, Lcom/sec/ims/Dialog;->getSipRemoteTag()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_4

    .line 309
    iget-object v7, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-virtual {v8}, Lcom/sec/ims/Dialog;->getCallType()I

    move-result v11

    invoke-static {v11}, Lcom/sec/internal/google/DataTypeConvertor;->convertToGoogleCallType(I)I

    move-result v11

    iput v11, v7, Landroid/telephony/ims/ImsCallProfile;->mCallType:I

    .line 310
    invoke-virtual {v8}, Lcom/sec/ims/Dialog;->getCallType()I

    move-result v7

    invoke-virtual {v2, v7}, Lcom/sec/ims/volte2/data/CallProfile;->setCallType(I)V

    .line 311
    invoke-virtual {v2, v0}, Lcom/sec/ims/volte2/data/CallProfile;->setPullCall(Z)V

    .line 313
    :try_start_1
    iget-object v0, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-virtual {v4}, Lcom/sec/ims/DialogEvent;->getMsisdn()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v0, v7, v8}, Lcom/sec/ims/volte2/IImsCallSession;->pulling(Ljava/lang/String;Lcom/sec/ims/Dialog;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 314
    return-void

    .line 315
    :catch_0
    move-exception v0

    .line 316
    .local v0, "e":Landroid/os/RemoteException;
    const/16 v5, 0x3f7

    .line 317
    goto :goto_2

    .line 320
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v8    # "pullTarget":Lcom/sec/ims/Dialog;
    .end local v9    # "targetDialogId":I
    .end local v10    # "mno":Lcom/sec/internal/constants/Mno;
    :cond_4
    goto :goto_0

    .line 300
    .restart local v8    # "pullTarget":Lcom/sec/ims/Dialog;
    .restart local v9    # "targetDialogId":I
    .restart local v10    # "mno":Lcom/sec/internal/constants/Mno;
    :catch_1
    move-exception v11

    .line 301
    .local v11, "e":Ljava/lang/NumberFormatException;
    goto :goto_0

    .line 323
    .end local v6    # "dialogId":I
    .end local v8    # "pullTarget":Lcom/sec/ims/Dialog;
    .end local v9    # "targetDialogId":I
    .end local v10    # "mno":Lcom/sec/internal/constants/Mno;
    .end local v11    # "e":Ljava/lang/NumberFormatException;
    :cond_5
    :goto_2
    iget-object v0, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    if-eqz v0, :cond_6

    .line 324
    new-instance v6, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v6, v5, v1}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    invoke-interface {v0, v6}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionInitiatedFailed(Landroid/telephony/ims/ImsReasonInfo;)V

    .line 326
    .end local v3    # "oemExtras":Landroid/os/Bundle;
    .end local v4    # "de":Lcom/sec/ims/DialogEvent;
    .end local v5    # "pullFailReason":I
    :cond_6
    goto :goto_3

    .line 328
    :cond_7
    :try_start_2
    iget-object v0, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {v0, p1, v2}, Lcom/sec/ims/volte2/IImsCallSession;->start(Ljava/lang/String;Lcom/sec/ims/volte2/data/CallProfile;)I

    move-result v0

    if-ltz v0, :cond_8

    .line 335
    goto :goto_3

    .line 329
    :cond_8
    new-instance v0, Landroid/os/RemoteException;

    const-string/jumbo v3, "start return -1"

    invoke-direct {v0, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v2    # "cp":Lcom/sec/ims/volte2/data/CallProfile;
    .end local p0    # "this":Lcom/sec/internal/google/ImsCallSessionImpl;
    .end local p1    # "callee":Ljava/lang/String;
    .end local p2    # "profile":Landroid/telephony/ims/ImsCallProfile;
    throw v0
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    .line 331
    .restart local v2    # "cp":Lcom/sec/ims/volte2/data/CallProfile;
    .restart local p0    # "this":Lcom/sec/internal/google/ImsCallSessionImpl;
    .restart local p1    # "callee":Ljava/lang/String;
    .restart local p2    # "profile":Landroid/telephony/ims/ImsCallProfile;
    :catch_2
    move-exception v0

    .line 332
    .restart local v0    # "e":Landroid/os/RemoteException;
    iget-object v3, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    if-eqz v3, :cond_9

    .line 333
    new-instance v4, Landroid/telephony/ims/ImsReasonInfo;

    const/16 v5, 0x67

    invoke-direct {v4, v5, v1}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    invoke-interface {v3, v4}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionInitiatedFailed(Landroid/telephony/ims/ImsReasonInfo;)V

    .line 337
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_9
    :goto_3
    return-void

    .line 260
    .end local v2    # "cp":Lcom/sec/ims/volte2/data/CallProfile;
    :cond_a
    :goto_4
    iget-object v0, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    if-eqz v0, :cond_b

    .line 261
    new-instance v2, Landroid/telephony/ims/ImsReasonInfo;

    const/16 v3, 0x66

    invoke-direct {v2, v3, v1}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    invoke-interface {v0, v2}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionInitiatedFailed(Landroid/telephony/ims/ImsReasonInfo;)V

    .line 263
    :cond_b
    return-void
.end method

.method public startConference([Ljava/lang/String;Landroid/telephony/ims/ImsCallProfile;)V
    .locals 5
    .param p1, "participants"    # [Ljava/lang/String;
    .param p2, "profile"    # Landroid/telephony/ims/ImsCallProfile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 342
    iget-object v0, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 343
    iget-object v0, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    if-eqz v0, :cond_0

    .line 344
    new-instance v2, Landroid/telephony/ims/ImsReasonInfo;

    const/16 v3, 0x66

    invoke-direct {v2, v3, v1}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    invoke-interface {v0, v2}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionInitiatedFailed(Landroid/telephony/ims/ImsReasonInfo;)V

    .line 346
    :cond_0
    return-void

    .line 350
    :cond_1
    const/4 v0, 0x1

    :try_start_0
    iput v0, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mState:I

    .line 351
    iput-object p2, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    .line 352
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/sec/internal/google/ImsCallSessionImpl;->setCallProfile(I)V

    .line 353
    iget-object v0, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    iget-object v2, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {v2}, Lcom/sec/ims/volte2/IImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v2

    invoke-interface {v0, p1, v2}, Lcom/sec/ims/volte2/IImsCallSession;->startConference([Ljava/lang/String;Lcom/sec/ims/volte2/data/CallProfile;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 358
    goto :goto_0

    .line 354
    :catch_0
    move-exception v0

    .line 355
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v2, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    if-eqz v2, :cond_2

    .line 356
    new-instance v3, Landroid/telephony/ims/ImsReasonInfo;

    const/16 v4, 0x67

    invoke-direct {v3, v4, v1}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    invoke-interface {v2, v3}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionInitiatedFailed(Landroid/telephony/ims/ImsReasonInfo;)V

    .line 359
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_2
    :goto_0
    return-void
.end method

.method public startDtmf(C)V
    .locals 2
    .param p1, "c"    # C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 623
    iget-object v0, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    if-nez v0, :cond_0

    .line 624
    return-void

    .line 627
    :cond_0
    invoke-direct {p0, p1}, Lcom/sec/internal/google/ImsCallSessionImpl;->convertDtmfToCode(C)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/sec/ims/volte2/IImsCallSession;->startDtmf(I)V

    .line 628
    return-void
.end method

.method public stopDtmf()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 632
    iget-object v0, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    if-nez v0, :cond_0

    .line 633
    return-void

    .line 636
    :cond_0
    invoke-interface {v0}, Lcom/sec/ims/volte2/IImsCallSession;->stopDtmf()V

    .line 637
    return-void
.end method

.method public terminate(I)V
    .locals 5
    .param p1, "reason"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 411
    iget-object v0, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 412
    iget-object v0, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    if-eqz v0, :cond_0

    .line 413
    new-instance v2, Landroid/telephony/ims/ImsReasonInfo;

    const/16 v3, 0x66

    invoke-direct {v2, v3, v1}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    invoke-interface {v0, v2}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionTerminated(Landroid/telephony/ims/ImsReasonInfo;)V

    .line 415
    :cond_0
    return-void

    .line 419
    :cond_1
    :try_start_0
    invoke-interface {v0}, Lcom/sec/ims/volte2/IImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/volte2/data/CallProfile;->getCallType()I

    move-result v0

    const/16 v2, 0xc

    if-ne v0, v2, :cond_2

    .line 420
    iget-object v0, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    const/4 v2, 0x3

    const-string v3, "1"

    invoke-interface {v0, v2, v3}, Lcom/sec/ims/volte2/IImsCallSession;->info(ILjava/lang/String;)V

    goto :goto_0

    .line 422
    :cond_2
    iget-object v0, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-virtual {p0, p1}, Lcom/sec/internal/google/ImsCallSessionImpl;->convertEndReasonFromFW(I)I

    move-result v2

    invoke-interface {v0, v2}, Lcom/sec/ims/volte2/IImsCallSession;->terminate(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 428
    :goto_0
    goto :goto_1

    .line 424
    :catch_0
    move-exception v0

    .line 425
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v2, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    if-eqz v2, :cond_3

    .line 426
    new-instance v3, Landroid/telephony/ims/ImsReasonInfo;

    const/16 v4, 0x67

    invoke-direct {v3, v4, v1}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    invoke-interface {v2, v3}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionTerminated(Landroid/telephony/ims/ImsReasonInfo;)V

    .line 429
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_3
    :goto_1
    return-void
.end method

.method public transfer(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "isConfirmationRequired"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1185
    if-nez p2, :cond_0

    .line 1188
    iget-object v0, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mVolteServiceModule:Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    iget-object v1, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {v1}, Lcom/sec/ims/volte2/IImsCallSession;->getCallId()I

    move-result v1

    invoke-interface {v0, v1, p1}, Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;->pushCall(ILjava/lang/String;)V

    .line 1189
    return-void

    .line 1186
    :cond_0
    new-instance v0, Landroid/os/RemoteException;

    const-string v1, "not support assured transfer"

    invoke-direct {v0, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public update(ILandroid/telephony/ims/ImsStreamMediaProfile;)V
    .locals 0
    .param p1, "callType"    # I
    .param p2, "profile"    # Landroid/telephony/ims/ImsStreamMediaProfile;

    .line 544
    return-void
.end method

.method public updateCallProfile()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1010
    iget-object v0, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    if-eqz v0, :cond_14

    .line 1014
    invoke-interface {v0}, Lcom/sec/ims/volte2/IImsCallSession;->getPhoneId()I

    move-result v0

    invoke-static {v0}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v0

    .line 1015
    .local v0, "mno":Lcom/sec/internal/constants/Mno;
    iget-object v1, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {v1}, Lcom/sec/ims/volte2/IImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v1

    .line 1016
    .local v1, "cp":Lcom/sec/ims/volte2/data/CallProfile;
    if-nez v1, :cond_0

    .line 1017
    return-void

    .line 1020
    :cond_0
    invoke-virtual {v1}, Lcom/sec/ims/volte2/data/CallProfile;->getHDIcon()I

    move-result v2

    const/4 v3, 0x3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne v2, v5, :cond_1

    .line 1021
    iget-object v2, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iput v4, v2, Landroid/telephony/ims/ImsCallProfile;->mRestrictCause:I

    goto :goto_0

    .line 1023
    :cond_1
    iget-object v2, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iput v3, v2, Landroid/telephony/ims/ImsCallProfile;->mRestrictCause:I

    .line 1026
    :goto_0
    invoke-virtual {v1}, Lcom/sec/ims/volte2/data/CallProfile;->isConferenceCall()Z

    move-result v2

    const-string v6, "dialstring"

    const-string v7, "conference"

    const-string v8, "cnap"

    const-string v9, "oir"

    if-eqz v2, :cond_4

    .line 1027
    iget-object v2, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-virtual {v2, v7, v5}, Landroid/telephony/ims/ImsCallProfile;->setCallExtraBoolean(Ljava/lang/String;Z)V

    .line 1028
    iget-object v2, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-virtual {v2, v6, v5}, Landroid/telephony/ims/ImsCallProfile;->setCallExtraInt(Ljava/lang/String;I)V

    .line 1030
    invoke-virtual {v0}, Lcom/sec/internal/constants/Mno;->isKor()Z

    move-result v2

    if-nez v2, :cond_3

    sget-object v2, Lcom/sec/internal/constants/Mno;->CHT:Lcom/sec/internal/constants/Mno;

    if-ne v0, v2, :cond_2

    goto :goto_1

    .line 1038
    :cond_2
    iget-object v2, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    const/4 v4, 0x2

    invoke-virtual {v2, v9, v4}, Landroid/telephony/ims/ImsCallProfile;->setCallExtraInt(Ljava/lang/String;I)V

    .line 1040
    iget-object v2, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-virtual {v2, v8, v4}, Landroid/telephony/ims/ImsCallProfile;->setCallExtraInt(Ljava/lang/String;I)V

    goto :goto_3

    .line 1031
    :cond_3
    :goto_1
    invoke-virtual {v1}, Lcom/sec/ims/volte2/data/CallProfile;->getDialingNumber()Ljava/lang/String;

    move-result-object v2

    .line 1032
    .local v2, "number":Ljava/lang/String;
    const/4 v4, 0x0

    .line 1034
    .local v4, "oir":I
    iget-object v6, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mGoogleImsService:Lcom/sec/internal/google/GoogleImsService;

    invoke-virtual {v6, v2}, Lcom/sec/internal/google/GoogleImsService;->getOirExtraFromDialingNumber(Ljava/lang/String;)I

    move-result v4

    .line 1035
    iget-object v6, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-virtual {v6, v9, v4}, Landroid/telephony/ims/ImsCallProfile;->setCallExtraInt(Ljava/lang/String;I)V

    .line 1036
    iget-object v6, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-virtual {v6, v8, v4}, Landroid/telephony/ims/ImsCallProfile;->setCallExtraInt(Ljava/lang/String;I)V

    .line 1037
    .end local v2    # "number":Ljava/lang/String;
    .end local v4    # "oir":I
    goto :goto_3

    .line 1044
    :cond_4
    iget-object v2, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-virtual {v2, v7, v4}, Landroid/telephony/ims/ImsCallProfile;->setCallExtraBoolean(Ljava/lang/String;Z)V

    .line 1045
    iget-object v2, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-virtual {v2, v6, v4}, Landroid/telephony/ims/ImsCallProfile;->setCallExtraInt(Ljava/lang/String;I)V

    .line 1047
    invoke-virtual {v1}, Lcom/sec/ims/volte2/data/CallProfile;->getDialingNumber()Ljava/lang/String;

    move-result-object v2

    .line 1048
    .restart local v2    # "number":Ljava/lang/String;
    invoke-virtual {v1}, Lcom/sec/ims/volte2/data/CallProfile;->getLetteringText()Ljava/lang/String;

    move-result-object v4

    .line 1050
    .local v4, "Pletteting":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 1051
    const-string/jumbo v2, "unknown"

    .line 1054
    :cond_5
    const/4 v6, 0x0

    .line 1055
    .local v6, "oir":I
    sget-object v7, Lcom/sec/internal/constants/Mno;->DOCOMO:Lcom/sec/internal/constants/Mno;

    if-ne v0, v7, :cond_6

    .line 1056
    iget-object v7, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mGoogleImsService:Lcom/sec/internal/google/GoogleImsService;

    invoke-virtual {v7, v4}, Lcom/sec/internal/google/GoogleImsService;->getOirExtraFromDialingNumberForDcm(Ljava/lang/String;)I

    move-result v6

    goto :goto_2

    .line 1058
    :cond_6
    iget-object v7, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mGoogleImsService:Lcom/sec/internal/google/GoogleImsService;

    invoke-virtual {v7, v2}, Lcom/sec/internal/google/GoogleImsService;->getOirExtraFromDialingNumber(Ljava/lang/String;)I

    move-result v6

    .line 1060
    :goto_2
    iget-object v7, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-virtual {v7, v9, v6}, Landroid/telephony/ims/ImsCallProfile;->setCallExtraInt(Ljava/lang/String;I)V

    .line 1061
    iget-object v7, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-virtual {v7, v8, v6}, Landroid/telephony/ims/ImsCallProfile;->setCallExtraInt(Ljava/lang/String;I)V

    .line 1064
    .end local v2    # "number":Ljava/lang/String;
    .end local v4    # "Pletteting":Ljava/lang/String;
    .end local v6    # "oir":I
    :goto_3
    iget-object v2, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-virtual {v1}, Lcom/sec/ims/volte2/data/CallProfile;->getNumberPlus()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    xor-int/2addr v4, v5

    const-string v6, "com.samsung.telephony.extra.IS_TWO_PHONE_MODE"

    invoke-virtual {v2, v6, v4}, Landroid/telephony/ims/ImsCallProfile;->setCallExtraBoolean(Ljava/lang/String;Z)V

    .line 1065
    iget-object v2, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-virtual {v1}, Lcom/sec/ims/volte2/data/CallProfile;->getPhotoRing()Ljava/lang/String;

    move-result-object v4

    const-string v6, "com.samsung.telephony.extra.PHOTO_RING_AVAILABLE"

    invoke-virtual {v2, v6, v4}, Landroid/telephony/ims/ImsCallProfile;->setCallExtra(Ljava/lang/String;Ljava/lang/String;)V

    .line 1066
    iget-object v2, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-virtual {v1}, Lcom/sec/ims/volte2/data/CallProfile;->getAlertInfo()Ljava/lang/String;

    move-result-object v4

    const-string v6, "com.samsung.telephony.extra.ALERT_INFO"

    invoke-virtual {v2, v6, v4}, Landroid/telephony/ims/ImsCallProfile;->setCallExtra(Ljava/lang/String;Ljava/lang/String;)V

    .line 1067
    iget-object v2, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-virtual {v1}, Lcom/sec/ims/volte2/data/CallProfile;->getNumberPlus()Ljava/lang/String;

    move-result-object v4

    const-string v6, "com.samsung.telephony.extra.DUAL_NUMBER"

    invoke-virtual {v2, v6, v4}, Landroid/telephony/ims/ImsCallProfile;->setCallExtra(Ljava/lang/String;Ljava/lang/String;)V

    .line 1068
    iget-object v2, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-virtual {v1}, Lcom/sec/ims/volte2/data/CallProfile;->getConferenceSupported()Ljava/lang/String;

    move-result-object v4

    const-string v6, "com.samsung.telephony.extra.SKT_CONFERENCE_CALL_SUPPORT"

    invoke-virtual {v2, v6, v4}, Landroid/telephony/ims/ImsCallProfile;->setCallExtra(Ljava/lang/String;Ljava/lang/String;)V

    .line 1070
    invoke-virtual {v1}, Lcom/sec/ims/volte2/data/CallProfile;->getHistoryInfo()Ljava/lang/String;

    move-result-object v2

    const-string v4, "1"

    const-string v6, "0"

    if-eqz v2, :cond_8

    .line 1071
    iget-object v2, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-virtual {v1}, Lcom/sec/ims/volte2/data/CallProfile;->getHistoryInfo()Ljava/lang/String;

    move-result-object v7

    const-string v8, "com.samsung.telephony.extra.CALL_FORWARDING_REDIRECT_NUMBER"

    invoke-virtual {v2, v8, v7}, Landroid/telephony/ims/ImsCallProfile;->setCallExtra(Ljava/lang/String;Ljava/lang/String;)V

    .line 1072
    invoke-virtual {v1}, Lcom/sec/ims/volte2/data/CallProfile;->getHistoryInfo()Ljava/lang/String;

    move-result-object v2

    const-string v7, "anonymous"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    const-string v7, "com.samsung.telephony.extra.CALL_FORWARDING_PRESENTATION"

    if-eqz v2, :cond_7

    .line 1073
    iget-object v2, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-virtual {v2, v7, v4}, Landroid/telephony/ims/ImsCallProfile;->setCallExtra(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 1075
    :cond_7
    iget-object v2, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-virtual {v2, v7, v6}, Landroid/telephony/ims/ImsCallProfile;->setCallExtra(Ljava/lang/String;Ljava/lang/String;)V

    .line 1079
    :cond_8
    :goto_4
    invoke-virtual {v1}, Lcom/sec/ims/volte2/data/CallProfile;->getDtmfEvent()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_9

    .line 1080
    iget-object v2, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-virtual {v1}, Lcom/sec/ims/volte2/data/CallProfile;->getDtmfEvent()Ljava/lang/String;

    move-result-object v7

    const-string v8, "com.samsung.telephony.extra.DTMF_EVENT"

    invoke-virtual {v2, v8, v7}, Landroid/telephony/ims/ImsCallProfile;->setCallExtra(Ljava/lang/String;Ljava/lang/String;)V

    .line 1083
    :cond_9
    invoke-virtual {v1}, Lcom/sec/ims/volte2/data/CallProfile;->getLineMsisdn()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_a

    .line 1084
    iget-object v2, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-virtual {v1}, Lcom/sec/ims/volte2/data/CallProfile;->getLineMsisdn()Ljava/lang/String;

    move-result-object v7

    const-string v8, "com.samsung.telephony.extra.LINE_MSISDN"

    invoke-virtual {v2, v8, v7}, Landroid/telephony/ims/ImsCallProfile;->setCallExtra(Ljava/lang/String;Ljava/lang/String;)V

    .line 1087
    :cond_a
    iget-object v2, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-virtual {v1}, Lcom/sec/ims/volte2/data/CallProfile;->getSipCallId()Ljava/lang/String;

    move-result-object v7

    const-string v8, "com.samsung.telephony.extra.SIP_CALL_ID"

    invoke-virtual {v2, v8, v7}, Landroid/telephony/ims/ImsCallProfile;->setCallExtra(Ljava/lang/String;Ljava/lang/String;)V

    .line 1088
    iget-object v2, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-virtual {v1}, Lcom/sec/ims/volte2/data/CallProfile;->getIsFocus()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const-string v7, "com.samsung.telephony.extra.MT_CONFERENCE"

    invoke-virtual {v2, v7, v4}, Landroid/telephony/ims/ImsCallProfile;->setCallExtraBoolean(Ljava/lang/String;Z)V

    .line 1090
    invoke-virtual {v1}, Lcom/sec/ims/volte2/data/CallProfile;->getDirection()I

    move-result v2

    const-string v4, "oi"

    if-nez v2, :cond_b

    .line 1091
    iget-object v2, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {v2}, Lcom/sec/ims/volte2/IImsCallSession;->getCmcType()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/sec/internal/google/ImsCallSessionImpl;->isCmcSecondaryType(I)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 1092
    iget-object v2, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-virtual {v1}, Lcom/sec/ims/volte2/data/CallProfile;->getLetteringText()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v4, v6}, Landroid/telephony/ims/ImsCallProfile;->setCallExtra(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 1095
    :cond_b
    sget-object v2, Lcom/sec/internal/constants/Mno;->KT:Lcom/sec/internal/constants/Mno;

    if-ne v0, v2, :cond_c

    .line 1096
    iget-object v2, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-virtual {v1}, Lcom/sec/ims/volte2/data/CallProfile;->getDialingNumber()Ljava/lang/String;

    move-result-object v7

    invoke-static {}, Lcom/sec/internal/helper/os/Debug;->isProductShip()Z

    move-result v8

    const-string v9, "+82"

    invoke-static {v7, v9, v6, v8}, Lcom/sec/internal/helper/ImsCallUtil;->removeUriPlusPrefix(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v4, v6}, Landroid/telephony/ims/ImsCallProfile;->setCallExtra(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 1097
    :cond_c
    invoke-virtual {v0}, Lcom/sec/internal/constants/Mno;->isAus()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 1098
    iget-object v2, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-virtual {v1}, Lcom/sec/ims/volte2/data/CallProfile;->getDialingNumber()Ljava/lang/String;

    move-result-object v7

    invoke-static {}, Lcom/sec/internal/helper/os/Debug;->isProductShip()Z

    move-result v8

    const-string v9, "+61"

    invoke-static {v7, v9, v6, v8}, Lcom/sec/internal/helper/ImsCallUtil;->removeUriPlusPrefix(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v4, v6}, Landroid/telephony/ims/ImsCallProfile;->setCallExtra(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 1099
    :cond_d
    iget-object v2, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-virtual {v2, v4}, Landroid/telephony/ims/ImsCallProfile;->getCallExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 1100
    iget-object v2, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-virtual {v1}, Lcom/sec/ims/volte2/data/CallProfile;->getDialingNumber()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v4, v6}, Landroid/telephony/ims/ImsCallProfile;->setCallExtra(Ljava/lang/String;Ljava/lang/String;)V

    .line 1103
    :cond_e
    :goto_5
    iget-object v2, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {v2}, Lcom/sec/ims/volte2/IImsCallSession;->getCmcType()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/sec/internal/google/ImsCallSessionImpl;->isCmcSecondaryType(I)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 1104
    invoke-virtual {v1}, Lcom/sec/ims/volte2/data/CallProfile;->getDirection()I

    move-result v2

    if-eqz v2, :cond_10

    .line 1105
    :cond_f
    iget-object v2, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-virtual {v1}, Lcom/sec/ims/volte2/data/CallProfile;->getLetteringText()Ljava/lang/String;

    move-result-object v4

    const-string v6, "cna"

    invoke-virtual {v2, v6, v4}, Landroid/telephony/ims/ImsCallProfile;->setCallExtra(Ljava/lang/String;Ljava/lang/String;)V

    .line 1109
    :cond_10
    iget-object v2, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-virtual {v1}, Lcom/sec/ims/volte2/data/CallProfile;->getCmcRecordEvent()I

    move-result v4

    const-string v6, "com.samsung.telephony.extra.CMC_RECORDING_EVENT"

    invoke-virtual {v2, v6, v4}, Landroid/telephony/ims/ImsCallProfile;->setCallExtraInt(Ljava/lang/String;I)V

    .line 1111
    iget-object v2, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-virtual {v1}, Lcom/sec/ims/volte2/data/CallProfile;->getCallType()I

    move-result v4

    invoke-static {v4}, Lcom/sec/internal/google/DataTypeConvertor;->convertToGoogleCallType(I)I

    move-result v4

    iput v4, v2, Landroid/telephony/ims/ImsCallProfile;->mCallType:I

    .line 1112
    iget-object v2, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-virtual {v1}, Lcom/sec/ims/volte2/data/CallProfile;->getMediaProfile()Lcom/sec/ims/volte2/data/MediaProfile;

    move-result-object v4

    invoke-static {v4}, Lcom/sec/internal/google/DataTypeConvertor;->convertToGoogleMediaProfile(Lcom/sec/ims/volte2/data/MediaProfile;)Landroid/telephony/ims/ImsStreamMediaProfile;

    move-result-object v4

    iput-object v4, v2, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    .line 1114
    iget-object v2, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-virtual {v1}, Lcom/sec/ims/volte2/data/CallProfile;->hasRemoteVideoCapa()Z

    move-result v4

    const-string v6, "call_mode_changeable"

    invoke-virtual {v2, v6, v4}, Landroid/telephony/ims/ImsCallProfile;->setCallExtraBoolean(Ljava/lang/String;Z)V

    .line 1115
    iget-object v2, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-virtual {v1}, Lcom/sec/ims/volte2/data/CallProfile;->isVideoCRBT()Z

    move-result v4

    const-string v6, "com.samsung.telephony.extra.VIDEO_CRBT"

    invoke-virtual {v2, v6, v4}, Landroid/telephony/ims/ImsCallProfile;->setCallExtraBoolean(Ljava/lang/String;Z)V

    .line 1116
    iget-object v2, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {v2}, Lcom/sec/ims/volte2/IImsCallSession;->getCmcType()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/sec/internal/google/ImsCallSessionImpl;->isCmcSecondaryType(I)Z

    move-result v2

    const-string v4, "CallRadioTech"

    if-eqz v2, :cond_11

    .line 1117
    iget-object v2, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    const/16 v6, 0xe

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v4, v6}, Landroid/telephony/ims/ImsCallProfile;->setCallExtra(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    .line 1119
    :cond_11
    iget-object v2, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-virtual {v1}, Lcom/sec/ims/volte2/data/CallProfile;->getRadioTech()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v4, v6}, Landroid/telephony/ims/ImsCallProfile;->setCallExtra(Ljava/lang/String;Ljava/lang/String;)V

    .line 1121
    :goto_6
    iget-object v2, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iget-object v4, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mVolteServiceModule:Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    iget-object v6, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {v6}, Lcom/sec/ims/volte2/IImsCallSession;->getPhoneId()I

    move-result v6

    invoke-interface {v4, v6}, Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;->isVolteSupportECT(I)Z

    move-result v4

    const-string v6, "com.samsung.telephony.extra.CAN_TRANSFER_CALL"

    invoke-virtual {v2, v6, v4}, Landroid/telephony/ims/ImsCallProfile;->setCallExtraBoolean(Ljava/lang/String;Z)V

    .line 1122
    iget-object v2, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-virtual {v1}, Lcom/sec/ims/volte2/data/CallProfile;->getDirection()I

    move-result v4

    const-string v6, "com.samsung.telephony.extra.CALL_DIRECTION"

    invoke-virtual {v2, v6, v4}, Landroid/telephony/ims/ImsCallProfile;->setCallExtraInt(Ljava/lang/String;I)V

    .line 1123
    iget-object v2, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-virtual {v1}, Lcom/sec/ims/volte2/data/CallProfile;->getAudioRxTrackId()I

    move-result v4

    const-string v6, "com.samsung.telephony.extra.AUDIO_RX_TRACK_ID"

    invoke-virtual {v2, v6, v4}, Landroid/telephony/ims/ImsCallProfile;->setCallExtraInt(Ljava/lang/String;I)V

    .line 1124
    iget-object v2, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-virtual {v1}, Lcom/sec/ims/volte2/data/CallProfile;->getFeatureCaps()Ljava/lang/String;

    move-result-object v4

    const-string v6, "feature_caps"

    invoke-virtual {v2, v6, v4}, Landroid/telephony/ims/ImsCallProfile;->setCallExtra(Ljava/lang/String;Ljava/lang/String;)V

    .line 1127
    iget-object v2, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-virtual {v1}, Lcom/sec/ims/volte2/data/CallProfile;->getRecordState()I

    move-result v4

    const-string v6, "com.samsung.telephony.extra.VT_RECORDING_STATE"

    invoke-virtual {v2, v6, v4}, Landroid/telephony/ims/ImsCallProfile;->setCallExtraInt(Ljava/lang/String;I)V

    .line 1128
    iget-boolean v2, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mIsEcbmSupport:Z

    if-eqz v2, :cond_12

    .line 1129
    iget-object v2, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    const-string v4, "imsEcmSupport"

    invoke-virtual {v2, v4, v5}, Landroid/telephony/ims/ImsCallProfile;->setCallExtraBoolean(Ljava/lang/String;Z)V

    .line 1132
    :cond_12
    iget-object v2, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mVolteServiceModule:Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    invoke-interface {v2}, Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;->getCmcServiceHelper()Lcom/sec/internal/interfaces/ims/servicemodules/volte2/ICmcServiceHelper;

    move-result-object v2

    iget-object v4, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {v4}, Lcom/sec/ims/volte2/IImsCallSession;->getPhoneId()I

    move-result v4

    invoke-interface {v2, v4}, Lcom/sec/internal/interfaces/ims/servicemodules/volte2/ICmcServiceHelper;->isCmcRegExist(I)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 1133
    invoke-virtual {p0, v1}, Lcom/sec/internal/google/ImsCallSessionImpl;->updateCmcCallExtras(Lcom/sec/ims/volte2/data/CallProfile;)V

    .line 1135
    :cond_13
    invoke-virtual {p0, v3}, Lcom/sec/internal/google/ImsCallSessionImpl;->setCallProfile(I)V

    .line 1136
    return-void

    .line 1011
    .end local v0    # "mno":Lcom/sec/internal/constants/Mno;
    .end local v1    # "cp":Lcom/sec/ims/volte2/data/CallProfile;
    :cond_14
    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0
.end method

.method protected updateCmcCallExtras(Lcom/sec/ims/volte2/data/CallProfile;)V
    .locals 8
    .param p1, "cp"    # Lcom/sec/ims/volte2/data/CallProfile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 747
    iget-object v0, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iget-object v0, v0, Landroid/telephony/ims/ImsCallProfile;->mCallExtras:Landroid/os/Bundle;

    const-string v1, "android.telephony.ims.extra.OEM_EXTRAS"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    const-string v2, "com.samsung.telephony.extra.CMC_CS_DTMF_KEY"

    if-eqz v0, :cond_0

    .line 748
    iget-object v0, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iget-object v0, v0, Landroid/telephony/ims/ImsCallProfile;->mCallExtras:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 749
    .local v0, "oemExtras":Landroid/os/Bundle;
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 750
    iget-object v3, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iget-object v3, v3, Landroid/telephony/ims/ImsCallProfile;->mCallExtras:Landroid/os/Bundle;

    invoke-virtual {v3, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    goto :goto_0

    .line 752
    .end local v0    # "oemExtras":Landroid/os/Bundle;
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 755
    .restart local v0    # "oemExtras":Landroid/os/Bundle;
    :goto_0
    iget-object v3, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {v3}, Lcom/sec/ims/volte2/IImsCallSession;->getCmcType()I

    move-result v3

    .line 756
    .local v3, "cmcType":I
    iget-object v4, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {v4}, Lcom/sec/ims/volte2/IImsCallSession;->getSessionId()I

    move-result v4

    .line 758
    .local v4, "sessionId":I
    const-string v5, "com.samsung.telephony.extra.CMC_TYPE"

    invoke-virtual {v0, v5, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 759
    const-string v5, "com.samsung.telephony.extra.CMC_SESSION_ID"

    invoke-virtual {v0, v5, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 760
    const/4 v5, 0x1

    if-ne v3, v5, :cond_4

    .line 761
    invoke-virtual {p1}, Lcom/sec/ims/volte2/data/CallProfile;->getDialingNumber()Ljava/lang/String;

    move-result-object v5

    const-string v6, "com.samsung.telephony.extra.CMC_DIAL_TO"

    invoke-virtual {v0, v6, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 762
    invoke-virtual {p1}, Lcom/sec/ims/volte2/data/CallProfile;->getCmcDtmfKey()I

    move-result v5

    .line 763
    .local v5, "dtmfKey":I
    const/4 v6, -0x1

    if-le v5, v6, :cond_5

    const/16 v6, 0xc

    if-ge v5, v6, :cond_5

    .line 764
    const/4 v6, 0x0

    .line 765
    .local v6, "keyChar":C
    if-ltz v5, :cond_1

    const/16 v7, 0x9

    if-gt v5, v7, :cond_1

    .line 766
    add-int/lit8 v7, v5, 0x30

    int-to-char v6, v7

    goto :goto_1

    .line 767
    :cond_1
    const/16 v7, 0xa

    if-ne v5, v7, :cond_2

    .line 768
    const/16 v6, 0x2a

    goto :goto_1

    .line 769
    :cond_2
    const/16 v7, 0xb

    if-ne v5, v7, :cond_3

    .line 770
    const/16 v6, 0x23

    .line 772
    :cond_3
    :goto_1
    invoke-static {v6}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v2, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 774
    .end local v5    # "dtmfKey":I
    .end local v6    # "keyChar":C
    :cond_4
    invoke-virtual {p0, v3}, Lcom/sec/internal/google/ImsCallSessionImpl;->isCmcSecondaryType(I)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 775
    invoke-virtual {p1}, Lcom/sec/ims/volte2/data/CallProfile;->getCmcCallTime()Ljava/lang/String;

    move-result-object v2

    const-string v5, "com.samsung.telephony.extra.CMC_PD_CALL_CONNECT_TIME"

    invoke-virtual {v0, v5, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 774
    :cond_5
    :goto_2
    nop

    .line 778
    :goto_3
    invoke-virtual {p1}, Lcom/sec/ims/volte2/data/CallProfile;->getReplaceSipCallId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 780
    invoke-virtual {p1}, Lcom/sec/ims/volte2/data/CallProfile;->getCmcDeviceId()Ljava/lang/String;

    move-result-object v2

    const-string v5, "com.samsung.telephony.extra.CMC_DEVICE_ID_BY_SD"

    invoke-virtual {v0, v5, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 781
    :cond_6
    invoke-virtual {p1}, Lcom/sec/ims/volte2/data/CallProfile;->getCmcDeviceId()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_7

    .line 782
    invoke-virtual {p1}, Lcom/sec/ims/volte2/data/CallProfile;->getCmcDeviceId()Ljava/lang/String;

    move-result-object v2

    const-string v5, "com.samsung.telephony.extra.CMC_DEVICE_ID"

    invoke-virtual {v0, v5, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 785
    :cond_7
    :goto_4
    iget-object v2, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iget-object v2, v2, Landroid/telephony/ims/ImsCallProfile;->mCallExtras:Landroid/os/Bundle;

    invoke-virtual {v2, v1, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 786
    return-void
.end method

.method public updateConferenceStatus(ILjava/lang/String;)V
    .locals 3
    .param p1, "callId"    # I
    .param p2, "status"    # Ljava/lang/String;

    .line 676
    const-string v0, "disconnected"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 677
    iget-object v0, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mGoogleImsService:Lcom/sec/internal/google/GoogleImsService;

    const/4 v1, 0x2

    invoke-virtual {v0, p1, p2, v1}, Lcom/sec/internal/google/GoogleImsService;->updateParticipant(ILjava/lang/String;I)V

    goto :goto_0

    .line 679
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mGoogleImsService:Lcom/sec/internal/google/GoogleImsService;

    invoke-virtual {v0, p1, p2}, Lcom/sec/internal/google/GoogleImsService;->updateParticipant(ILjava/lang/String;)V

    .line 683
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mGoogleImsService:Lcom/sec/internal/google/GoogleImsService;

    invoke-virtual {v0}, Lcom/sec/internal/google/GoogleImsService;->getConferenceHost()Lcom/sec/internal/google/ImsCallSessionImpl;

    move-result-object v0

    .line 684
    .local v0, "host":Lcom/sec/internal/google/ImsCallSessionImpl;
    iget-object v1, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mGoogleImsService:Lcom/sec/internal/google/GoogleImsService;

    iget-object v2, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-virtual {v1, v2}, Lcom/sec/internal/google/GoogleImsService;->updateSecConferenceInfo(Landroid/telephony/ims/ImsCallProfile;)V

    .line 686
    iget-object v1, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    if-nez v1, :cond_1

    .line 687
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/sec/internal/google/ImsCallSessionImpl;->getListener()Landroid/telephony/ims/aidl/IImsCallSessionListener;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 688
    invoke-virtual {v0}, Lcom/sec/internal/google/ImsCallSessionImpl;->getListener()Landroid/telephony/ims/aidl/IImsCallSessionListener;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-interface {v1, v2}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionUpdated(Landroid/telephony/ims/ImsCallProfile;)V

    .line 689
    invoke-virtual {v0}, Lcom/sec/internal/google/ImsCallSessionImpl;->getListener()Landroid/telephony/ims/aidl/IImsCallSessionListener;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mGoogleImsService:Lcom/sec/internal/google/GoogleImsService;

    invoke-virtual {v2}, Lcom/sec/internal/google/GoogleImsService;->getImsConferenceState()Landroid/telephony/ims/ImsConferenceState;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionConferenceStateUpdated(Landroid/telephony/ims/ImsConferenceState;)V

    goto :goto_1

    .line 692
    :cond_1
    iget-object v1, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    iget-object v2, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-interface {v1, v2}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionUpdated(Landroid/telephony/ims/ImsCallProfile;)V

    .line 693
    iget-object v1, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    iget-object v2, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mGoogleImsService:Lcom/sec/internal/google/GoogleImsService;

    invoke-virtual {v2}, Lcom/sec/internal/google/GoogleImsService;->getImsConferenceState()Landroid/telephony/ims/ImsConferenceState;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionConferenceStateUpdated(Landroid/telephony/ims/ImsConferenceState;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 696
    .end local v0    # "host":Lcom/sec/internal/google/ImsCallSessionImpl;
    :cond_2
    :goto_1
    goto :goto_2

    .line 695
    :catch_0
    move-exception v0

    .line 697
    :goto_2
    return-void
.end method

.method public updateHoldToneType(Z)V
    .locals 2
    .param p1, "localHoldTone"    # Z

    .line 1139
    if-eqz p1, :cond_0

    .line 1140
    iget-object v0, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iget-object v0, v0, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    const/4 v1, 0x0

    iput v1, v0, Landroid/telephony/ims/ImsStreamMediaProfile;->mAudioDirection:I

    .line 1142
    :cond_0
    return-void
.end method
