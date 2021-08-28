.class public Lcom/sec/internal/constants/ims/servicemodules/im/params/SendSlmMessageParams;
.super Ljava/lang/Object;
.source "SendSlmMessageParams.java"


# instance fields
.field public mBody:Ljava/lang/String;

.field public mCallback:Landroid/os/Message;

.field public mChatId:Ljava/lang/String;

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

.field public mImdnMessageId:Ljava/lang/String;

.field public mImdnTime:Ljava/util/Date;

.field public mInReplyToContributionId:Ljava/lang/String;

.field public mIsBroadcastMsg:Z

.field public mIsChatbotParticipant:Z

.field public mIsPublicAccountMsg:Z

.field public mMaapTrafficType:Ljava/lang/String;

.field public mMessageId:I

.field public mOwnImsi:Ljava/lang/String;

.field public mReceivers:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/sec/ims/util/ImsUri;",
            ">;"
        }
    .end annotation
.end field

.field public mReliableMessage:Ljava/lang/String;

.field public mReportMsgParams:Lcom/sec/internal/constants/ims/servicemodules/im/params/SendReportMsgParams;

.field public mUserAlias:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;Landroid/os/Message;ZZLjava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;)V
    .locals 16
    .param p1, "messageId"    # I
    .param p2, "chatId"    # Ljava/lang/String;
    .param p3, "body"    # Ljava/lang/String;
    .param p4, "contentType"    # Ljava/lang/String;
    .param p5, "userAlias"    # Ljava/lang/String;
    .param p6, "imdnMessageId"    # Ljava/lang/String;
    .param p7, "imdnTime"    # Ljava/util/Date;
    .param p9, "contributionId"    # Ljava/lang/String;
    .param p10, "conversationId"    # Ljava/lang/String;
    .param p11, "inReplyToContributionId"    # Ljava/lang/String;
    .param p13, "callback"    # Landroid/os/Message;
    .param p14, "isPublicAccountMsg"    # Z
    .param p15, "isBroadcastMsg"    # Z
    .param p16, "deviceName"    # Ljava/lang/String;
    .param p17, "reliableMessage"    # Ljava/lang/String;
    .param p18, "extraFt"    # Z
    .param p19, "ownImsi"    # Ljava/lang/String;
    .param p20, "isChatbotMessage"    # Z
    .param p21, "maapTrafficType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Date;",
            "Ljava/util/Set<",
            "Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Lcom/sec/ims/util/ImsUri;",
            ">;",
            "Landroid/os/Message;",
            "ZZ",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 61
    .local p8, "dispositionNotification":Ljava/util/Set;, "Ljava/util/Set<Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;>;"
    .local p12, "receivers":Ljava/util/Set;, "Ljava/util/Set<Lcom/sec/ims/util/ImsUri;>;"
    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const/4 v1, -0x1

    iput v1, v0, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendSlmMessageParams;->mMessageId:I

    .line 62
    move/from16 v1, p1

    iput v1, v0, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendSlmMessageParams;->mMessageId:I

    .line 63
    move-object/from16 v2, p2

    iput-object v2, v0, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendSlmMessageParams;->mChatId:Ljava/lang/String;

    .line 64
    move-object/from16 v3, p3

    iput-object v3, v0, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendSlmMessageParams;->mBody:Ljava/lang/String;

    .line 65
    move-object/from16 v4, p4

    iput-object v4, v0, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendSlmMessageParams;->mContentType:Ljava/lang/String;

    .line 66
    move-object/from16 v5, p5

    iput-object v5, v0, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendSlmMessageParams;->mUserAlias:Ljava/lang/String;

    .line 67
    move-object/from16 v6, p6

    iput-object v6, v0, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendSlmMessageParams;->mImdnMessageId:Ljava/lang/String;

    .line 68
    move-object/from16 v7, p7

    iput-object v7, v0, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendSlmMessageParams;->mImdnTime:Ljava/util/Date;

    .line 69
    move-object/from16 v8, p13

    iput-object v8, v0, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendSlmMessageParams;->mCallback:Landroid/os/Message;

    .line 70
    move-object/from16 v9, p8

    iput-object v9, v0, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendSlmMessageParams;->mDispositionNotification:Ljava/util/Set;

    .line 71
    move-object/from16 v10, p9

    iput-object v10, v0, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendSlmMessageParams;->mContributionId:Ljava/lang/String;

    .line 72
    move-object/from16 v11, p10

    iput-object v11, v0, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendSlmMessageParams;->mConversationId:Ljava/lang/String;

    .line 73
    move-object/from16 v12, p11

    iput-object v12, v0, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendSlmMessageParams;->mInReplyToContributionId:Ljava/lang/String;

    .line 74
    move-object/from16 v13, p12

    iput-object v13, v0, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendSlmMessageParams;->mReceivers:Ljava/util/Set;

    .line 75
    move/from16 v14, p14

    iput-boolean v14, v0, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendSlmMessageParams;->mIsPublicAccountMsg:Z

    .line 76
    move/from16 v15, p15

    iput-boolean v15, v0, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendSlmMessageParams;->mIsBroadcastMsg:Z

    .line 77
    move-object/from16 v1, p16

    iput-object v1, v0, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendSlmMessageParams;->mDeviceName:Ljava/lang/String;

    .line 78
    move-object/from16 v1, p17

    iput-object v1, v0, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendSlmMessageParams;->mReliableMessage:Ljava/lang/String;

    .line 79
    move/from16 v1, p18

    iput-boolean v1, v0, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendSlmMessageParams;->mExtraFt:Z

    .line 80
    move-object/from16 v1, p19

    iput-object v1, v0, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendSlmMessageParams;->mOwnImsi:Ljava/lang/String;

    .line 81
    move/from16 v1, p20

    iput-boolean v1, v0, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendSlmMessageParams;->mIsChatbotParticipant:Z

    .line 82
    move-object/from16 v1, p21

    iput-object v1, v0, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendSlmMessageParams;->mMaapTrafficType:Ljava/lang/String;

    .line 83
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 87
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SendMessageParams [mMessageId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendSlmMessageParams;->mMessageId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mChatId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendSlmMessageParams;->mChatId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mBody="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendSlmMessageParams;->mBody:Ljava/lang/String;

    .line 89
    invoke-static {v1}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mContentType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendSlmMessageParams;->mContentType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mImdnMessageId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendSlmMessageParams;->mImdnMessageId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mImdnTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendSlmMessageParams;->mImdnTime:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mDispositionNotification="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendSlmMessageParams;->mDispositionNotification:Ljava/util/Set;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mCallback="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendSlmMessageParams;->mCallback:Landroid/os/Message;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mIsPublicAccountMsg = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendSlmMessageParams;->mIsPublicAccountMsg:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mIsBroadcastMsg = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendSlmMessageParams;->mIsBroadcastMsg:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mDeviceName = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendSlmMessageParams;->mDeviceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mReliableMessage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendSlmMessageParams;->mReliableMessage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mExtraFt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendSlmMessageParams;->mExtraFt:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mOwnImsi="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendSlmMessageParams;->mOwnImsi:Ljava/lang/String;

    .line 100
    invoke-static {v1}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mIsChatbotParticipant="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendSlmMessageParams;->mIsChatbotParticipant:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mMaapTrafficType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendSlmMessageParams;->mMaapTrafficType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mInReplyToContributionId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendSlmMessageParams;->mInReplyToContributionId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mReceivers="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendSlmMessageParams;->mReceivers:Ljava/util/Set;

    .line 104
    invoke-static {v1}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 87
    return-object v0
.end method
