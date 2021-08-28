.class public Lcom/sec/internal/constants/ims/servicemodules/im/params/SendSlmFileTransferParams;
.super Ljava/lang/Object;
.source "SendSlmFileTransferParams.java"


# instance fields
.field public mCallback:Landroid/os/Message;

.field public mConfUri:Ljava/lang/String;

.field public mContentType:Ljava/lang/String;

.field public mContributionId:Ljava/lang/String;

.field public mConversationId:Ljava/lang/String;

.field public mDeviceName:Ljava/lang/String;

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

.field public mFileName:Ljava/lang/String;

.field public mFilePath:Ljava/lang/String;

.field public mFileSize:J

.field public mImdnMsgId:Ljava/lang/String;

.field public mInReplyToContributionId:Ljava/lang/String;

.field public mIsBroadcastMsg:Z

.field public mMessageId:I

.field public mOwnImsi:Ljava/lang/String;

.field public mRecipients:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/sec/ims/util/ImsUri;",
            ">;"
        }
    .end annotation
.end field

.field public mReliableMessage:Ljava/lang/String;

.field public mSdpContentType:Ljava/lang/String;

.field public mUserAlias:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/util/Set;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;Landroid/os/Message;ZLjava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 16
    .param p1, "messageId"    # I
    .param p3, "confUri"    # Ljava/lang/String;
    .param p4, "userAlias"    # Ljava/lang/String;
    .param p5, "fileName"    # Ljava/lang/String;
    .param p6, "filePath"    # Ljava/lang/String;
    .param p7, "fileSize"    # J
    .param p9, "contentType"    # Ljava/lang/String;
    .param p10, "sdpContentType"    # Ljava/lang/String;
    .param p11, "contributionId"    # Ljava/lang/String;
    .param p12, "conversationId"    # Ljava/lang/String;
    .param p13, "inReplyToContributionId"    # Ljava/lang/String;
    .param p14, "imdnMsgId"    # Ljava/lang/String;
    .param p16, "callback"    # Landroid/os/Message;
    .param p17, "isBroadcastMsg"    # Z
    .param p18, "deviceName"    # Ljava/lang/String;
    .param p19, "reliableMessage"    # Ljava/lang/String;
    .param p20, "extraFt"    # Z
    .param p21, "ownImsi"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Set<",
            "Lcom/sec/ims/util/ImsUri;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "J",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;",
            ">;",
            "Landroid/os/Message;",
            "Z",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 50
    .local p2, "recipients":Ljava/util/Set;, "Ljava/util/Set<Lcom/sec/ims/util/ImsUri;>;"
    .local p15, "dispNotifType":Ljava/util/Set;, "Ljava/util/Set<Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;>;"
    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const/4 v1, -0x1

    iput v1, v0, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendSlmFileTransferParams;->mMessageId:I

    .line 51
    move/from16 v1, p1

    iput v1, v0, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendSlmFileTransferParams;->mMessageId:I

    .line 52
    move-object/from16 v2, p2

    iput-object v2, v0, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendSlmFileTransferParams;->mRecipients:Ljava/util/Set;

    .line 53
    move-object/from16 v3, p3

    iput-object v3, v0, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendSlmFileTransferParams;->mConfUri:Ljava/lang/String;

    .line 54
    move-object/from16 v4, p4

    iput-object v4, v0, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendSlmFileTransferParams;->mUserAlias:Ljava/lang/String;

    .line 55
    move-object/from16 v5, p5

    iput-object v5, v0, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendSlmFileTransferParams;->mFileName:Ljava/lang/String;

    .line 56
    move-object/from16 v6, p6

    iput-object v6, v0, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendSlmFileTransferParams;->mFilePath:Ljava/lang/String;

    .line 57
    move-wide/from16 v7, p7

    iput-wide v7, v0, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendSlmFileTransferParams;->mFileSize:J

    .line 58
    move-object/from16 v9, p9

    iput-object v9, v0, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendSlmFileTransferParams;->mContentType:Ljava/lang/String;

    .line 59
    move-object/from16 v10, p10

    iput-object v10, v0, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendSlmFileTransferParams;->mSdpContentType:Ljava/lang/String;

    .line 60
    move-object/from16 v11, p11

    iput-object v11, v0, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendSlmFileTransferParams;->mContributionId:Ljava/lang/String;

    .line 61
    move-object/from16 v12, p12

    iput-object v12, v0, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendSlmFileTransferParams;->mConversationId:Ljava/lang/String;

    .line 62
    move-object/from16 v13, p13

    iput-object v13, v0, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendSlmFileTransferParams;->mInReplyToContributionId:Ljava/lang/String;

    .line 63
    move-object/from16 v14, p14

    iput-object v14, v0, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendSlmFileTransferParams;->mImdnMsgId:Ljava/lang/String;

    .line 64
    move-object/from16 v15, p15

    iput-object v15, v0, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendSlmFileTransferParams;->mDispositionNotification:Ljava/util/Set;

    .line 65
    move-object/from16 v1, p16

    iput-object v1, v0, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendSlmFileTransferParams;->mCallback:Landroid/os/Message;

    .line 66
    move/from16 v1, p17

    iput-boolean v1, v0, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendSlmFileTransferParams;->mIsBroadcastMsg:Z

    .line 67
    move-object/from16 v1, p18

    iput-object v1, v0, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendSlmFileTransferParams;->mDeviceName:Ljava/lang/String;

    .line 68
    move-object/from16 v1, p19

    iput-object v1, v0, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendSlmFileTransferParams;->mReliableMessage:Ljava/lang/String;

    .line 69
    move/from16 v1, p20

    iput-boolean v1, v0, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendSlmFileTransferParams;->mExtraFt:Z

    .line 70
    move-object/from16 v1, p21

    iput-object v1, v0, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendSlmFileTransferParams;->mOwnImsi:Ljava/lang/String;

    .line 71
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    .line 75
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SendSlmFileTransferParams [mMessageId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendSlmFileTransferParams;->mMessageId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mRecipients="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendSlmFileTransferParams;->mRecipients:Ljava/util/Set;

    .line 76
    invoke-static {v1}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mConfUri="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendSlmFileTransferParams;->mConfUri:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mUserAlias="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendSlmFileTransferParams;->mUserAlias:Ljava/lang/String;

    .line 78
    invoke-static {v1}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mFileName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendSlmFileTransferParams;->mFileName:Ljava/lang/String;

    .line 79
    invoke-static {v1}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mFilePath="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendSlmFileTransferParams;->mFilePath:Ljava/lang/String;

    .line 80
    invoke-static {v1}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mFileSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendSlmFileTransferParams;->mFileSize:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", mContentType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendSlmFileTransferParams;->mContentType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mSdpContentType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendSlmFileTransferParams;->mSdpContentType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mContributionId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendSlmFileTransferParams;->mContributionId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mConversationId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendSlmFileTransferParams;->mConversationId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mInReplyToContributionId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendSlmFileTransferParams;->mInReplyToContributionId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mImdnMsgId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendSlmFileTransferParams;->mImdnMsgId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mDispositionNotification="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendSlmFileTransferParams;->mDispositionNotification:Ljava/util/Set;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mCallback="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendSlmFileTransferParams;->mCallback:Landroid/os/Message;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mIsBroadcastMsg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendSlmFileTransferParams;->mIsBroadcastMsg:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mDeviceName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendSlmFileTransferParams;->mDeviceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mReliableMessage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendSlmFileTransferParams;->mReliableMessage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mExtraFt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendSlmFileTransferParams;->mExtraFt:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 75
    return-object v0
.end method
