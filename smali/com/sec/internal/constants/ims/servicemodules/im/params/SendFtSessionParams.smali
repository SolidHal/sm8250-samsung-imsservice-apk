.class public Lcom/sec/internal/constants/ims/servicemodules/im/params/SendFtSessionParams;
.super Ljava/lang/Object;
.source "SendFtSessionParams.java"


# instance fields
.field public final mCallback:Landroid/os/Message;

.field public mConfUri:Lcom/sec/ims/util/ImsUri;

.field public mContentType:Ljava/lang/String;

.field public mContributionId:Ljava/lang/String;

.field public mConversationId:Ljava/lang/String;

.field public mDeviceName:Ljava/lang/String;

.field public mDirection:Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

.field public mDispositionNotification:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;",
            ">;"
        }
    .end annotation
.end field

.field public mExtraFt:Z

.field public mFileFingerPrint:Ljava/lang/String;

.field public mFileName:Ljava/lang/String;

.field public mFilePath:Ljava/lang/String;

.field public mFileSize:J

.field public mFileTransferID:Ljava/lang/String;

.field public mImdnId:Ljava/lang/String;

.field public mImdnTime:Ljava/util/Date;

.field public mInReplyToContributionId:Ljava/lang/String;

.field public mIsPublicAccountMsg:Z

.field public mIsResuming:Z

.field public mMessageId:I

.field public mOwnImsi:Ljava/lang/String;

.field public mRecipients:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sec/ims/util/ImsUri;",
            ">;"
        }
    .end annotation
.end field

.field public mReliableMessage:Ljava/lang/String;

.field public mReportMsgParams:Lcom/sec/internal/constants/ims/servicemodules/im/params/SendReportMsgParams;

.field public final mSessionHandleCallback:Landroid/os/Message;

.field public mThumbPath:Ljava/lang/String;

.field public mTimeDuration:I

.field public mTransferredBytes:J

.field public mUserAlias:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;Landroid/os/Message;Ljava/util/List;Lcom/sec/ims/util/ImsUri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;ZJLjava/util/Set;Ljava/lang/String;Ljava/util/Date;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ZZLjava/lang/String;Ljava/lang/String;)V
    .locals 16
    .param p1, "messageId"    # I
    .param p2, "contributionId"    # Ljava/lang/String;
    .param p3, "conversationId"    # Ljava/lang/String;
    .param p4, "inReplyToContributionId"    # Ljava/lang/String;
    .param p5, "callback"    # Landroid/os/Message;
    .param p6, "sessionHandleCallback"    # Landroid/os/Message;
    .param p8, "confUri"    # Lcom/sec/ims/util/ImsUri;
    .param p9, "userAlias"    # Ljava/lang/String;
    .param p10, "fileName"    # Ljava/lang/String;
    .param p11, "filePath"    # Ljava/lang/String;
    .param p12, "fileSize"    # J
    .param p14, "contentType"    # Ljava/lang/String;
    .param p15, "direction"    # Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;
    .param p16, "isResuming"    # Z
    .param p17, "transferred"    # J
    .param p20, "imdnId"    # Ljava/lang/String;
    .param p21, "imdnTime"    # Ljava/util/Date;
    .param p22, "fileTransferID"    # Ljava/lang/String;
    .param p23, "thumbnailPath"    # Ljava/lang/String;
    .param p24, "timeDuration"    # I
    .param p25, "deviceName"    # Ljava/lang/String;
    .param p26, "reliableMessage"    # Ljava/lang/String;
    .param p27, "extraFt"    # Z
    .param p28, "isPublicAccountMsg"    # Z
    .param p29, "fileFingerPrint"    # Ljava/lang/String;
    .param p30, "ownImsi"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/os/Message;",
            "Landroid/os/Message;",
            "Ljava/util/List<",
            "Lcom/sec/ims/util/ImsUri;",
            ">;",
            "Lcom/sec/ims/util/ImsUri;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "J",
            "Ljava/lang/String;",
            "Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;",
            "ZJ",
            "Ljava/util/Set<",
            "Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/util/Date;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "ZZ",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 68
    .local p7, "recipients":Ljava/util/List;, "Ljava/util/List<Lcom/sec/ims/util/ImsUri;>;"
    .local p19, "dispositionNotification":Ljava/util/Set;, "Ljava/util/Set<Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;>;"
    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const/4 v1, -0x1

    iput v1, v0, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendFtSessionParams;->mMessageId:I

    .line 69
    move/from16 v1, p1

    iput v1, v0, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendFtSessionParams;->mMessageId:I

    .line 70
    move-object/from16 v2, p3

    iput-object v2, v0, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendFtSessionParams;->mConversationId:Ljava/lang/String;

    .line 71
    move-object/from16 v3, p4

    iput-object v3, v0, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendFtSessionParams;->mInReplyToContributionId:Ljava/lang/String;

    .line 72
    move-object/from16 v4, p5

    iput-object v4, v0, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendFtSessionParams;->mCallback:Landroid/os/Message;

    .line 73
    move-object/from16 v5, p6

    iput-object v5, v0, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendFtSessionParams;->mSessionHandleCallback:Landroid/os/Message;

    .line 75
    new-instance v6, Ljava/util/ArrayList;

    move-object/from16 v7, p7

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v6, v0, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendFtSessionParams;->mRecipients:Ljava/util/List;

    .line 76
    move-object/from16 v6, p8

    iput-object v6, v0, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendFtSessionParams;->mConfUri:Lcom/sec/ims/util/ImsUri;

    .line 77
    move-object/from16 v8, p9

    iput-object v8, v0, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendFtSessionParams;->mUserAlias:Ljava/lang/String;

    .line 78
    move-object/from16 v9, p11

    iput-object v9, v0, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendFtSessionParams;->mFilePath:Ljava/lang/String;

    .line 79
    move-object/from16 v10, p10

    iput-object v10, v0, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendFtSessionParams;->mFileName:Ljava/lang/String;

    .line 80
    move-wide/from16 v11, p12

    iput-wide v11, v0, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendFtSessionParams;->mFileSize:J

    .line 81
    move-object/from16 v13, p14

    iput-object v13, v0, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendFtSessionParams;->mContentType:Ljava/lang/String;

    .line 82
    move-object/from16 v14, p2

    iput-object v14, v0, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendFtSessionParams;->mContributionId:Ljava/lang/String;

    .line 83
    move-object/from16 v15, p15

    iput-object v15, v0, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendFtSessionParams;->mDirection:Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    .line 84
    move/from16 v1, p16

    iput-boolean v1, v0, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendFtSessionParams;->mIsResuming:Z

    .line 85
    move-wide/from16 v1, p17

    iput-wide v1, v0, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendFtSessionParams;->mTransferredBytes:J

    .line 86
    move-object/from16 v1, p19

    iput-object v1, v0, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendFtSessionParams;->mDispositionNotification:Ljava/util/Set;

    .line 87
    move-object/from16 v2, p20

    iput-object v2, v0, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendFtSessionParams;->mImdnId:Ljava/lang/String;

    .line 88
    move-object/from16 v1, p21

    iput-object v1, v0, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendFtSessionParams;->mImdnTime:Ljava/util/Date;

    .line 89
    move-object/from16 v1, p22

    iput-object v1, v0, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendFtSessionParams;->mFileTransferID:Ljava/lang/String;

    .line 90
    move-object/from16 v1, p23

    iput-object v1, v0, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendFtSessionParams;->mThumbPath:Ljava/lang/String;

    .line 91
    move/from16 v1, p24

    iput v1, v0, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendFtSessionParams;->mTimeDuration:I

    .line 92
    move-object/from16 v1, p25

    iput-object v1, v0, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendFtSessionParams;->mDeviceName:Ljava/lang/String;

    .line 93
    move-object/from16 v1, p26

    iput-object v1, v0, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendFtSessionParams;->mReliableMessage:Ljava/lang/String;

    .line 94
    move/from16 v1, p27

    iput-boolean v1, v0, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendFtSessionParams;->mExtraFt:Z

    .line 95
    move/from16 v1, p28

    iput-boolean v1, v0, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendFtSessionParams;->mIsPublicAccountMsg:Z

    .line 96
    move-object/from16 v1, p29

    iput-object v1, v0, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendFtSessionParams;->mFileFingerPrint:Ljava/lang/String;

    .line 97
    move-object/from16 v1, p30

    iput-object v1, v0, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendFtSessionParams;->mOwnImsi:Ljava/lang/String;

    .line 98
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 4

    .line 102
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SendFtSessionParams [mMessageId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendFtSessionParams;->mMessageId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mContributionId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendFtSessionParams;->mContributionId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", mConversationId="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendFtSessionParams;->mConversationId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", mInReplyToContributionId="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendFtSessionParams;->mInReplyToContributionId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", mRecipients="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendFtSessionParams;->mRecipients:Ljava/util/List;

    .line 106
    invoke-static {v2}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", mConfUri="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendFtSessionParams;->mConfUri:Lcom/sec/ims/util/ImsUri;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", mUserAlias="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendFtSessionParams;->mUserAlias:Ljava/lang/String;

    .line 108
    invoke-static {v2}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", mFilePath="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendFtSessionParams;->mFilePath:Ljava/lang/String;

    .line 109
    invoke-static {v2}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", mFileName="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendFtSessionParams;->mFileName:Ljava/lang/String;

    .line 110
    invoke-static {v2}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", mFileSize="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendFtSessionParams;->mFileSize:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", mContentType="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendFtSessionParams;->mContentType:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendFtSessionParams;->mContributionId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mDirection="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendFtSessionParams;->mDirection:Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mIsResuming="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendFtSessionParams;->mIsResuming:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mTransferredBytes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendFtSessionParams;->mTransferredBytes:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", mDispositionNotification="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendFtSessionParams;->mDispositionNotification:Ljava/util/Set;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mImdnId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendFtSessionParams;->mImdnId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mImdnTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendFtSessionParams;->mImdnTime:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mFileTransferID = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendFtSessionParams;->mFileTransferID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mCallback="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendFtSessionParams;->mCallback:Landroid/os/Message;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mSessionHandleCallback="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendFtSessionParams;->mSessionHandleCallback:Landroid/os/Message;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mThumbPath="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendFtSessionParams;->mThumbPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mTimeDuration = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendFtSessionParams;->mTimeDuration:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mDeviceName = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendFtSessionParams;->mDeviceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mReliableMessage = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendFtSessionParams;->mReliableMessage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mExtraFt = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendFtSessionParams;->mExtraFt:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mIsPublicAccountMsg = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendFtSessionParams;->mIsPublicAccountMsg:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mFileFingerPrint = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendFtSessionParams;->mFileFingerPrint:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 102
    return-object v0
.end method
