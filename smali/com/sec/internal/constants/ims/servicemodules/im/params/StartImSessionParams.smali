.class public Lcom/sec/internal/constants/ims/servicemodules/im/params/StartImSessionParams;
.super Ljava/lang/Object;
.source "StartImSessionParams.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/internal/constants/ims/servicemodules/im/params/StartImSessionParams$ServiceType;
    }
.end annotation


# instance fields
.field public mAcceptTypes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mAcceptWrappedTypes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mCallback:Landroid/os/Message;

.field public mChatId:Ljava/lang/String;

.field public mChatMode:Lcom/sec/internal/constants/ims/servicemodules/im/ChatMode;

.field public mContributionId:Ljava/lang/String;

.field public mConversationId:Ljava/lang/String;

.field public mDedicatedBearerCallback:Landroid/os/Message;

.field public mInReplyToContributionId:Ljava/lang/String;

.field public mIsChatbotParticipant:Z

.field public mIsClosedGroupChat:Z

.field public mIsConf:Z

.field public mIsGeolocationPush:Z

.field public mIsInviteForBye:Z

.field public mIsRejoin:Z

.field public mOwnImsi:Ljava/lang/String;

.field public mPrevContributionId:Ljava/lang/String;

.field public mReceivers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sec/ims/util/ImsUri;",
            ">;"
        }
    .end annotation
.end field

.field public mSdpContentType:Ljava/lang/String;

.field public mSendMessageParams:Lcom/sec/internal/constants/ims/servicemodules/im/params/SendMessageParams;

.field public mServiceId:Ljava/lang/String;

.field public mServiceType:Lcom/sec/internal/constants/ims/servicemodules/im/params/StartImSessionParams$ServiceType;

.field public mSubject:Ljava/lang/String;

.field public mSynchronousCallback:Landroid/os/Message;

.field public mUserAlias:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/params/StartImSessionParams$ServiceType;ZLjava/lang/String;Landroid/os/Message;Landroid/os/Message;Landroid/os/Message;Lcom/sec/internal/constants/ims/servicemodules/im/params/SendMessageParams;Ljava/lang/String;Ljava/lang/String;ZZZLjava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/String;ZLcom/sec/internal/constants/ims/servicemodules/im/ChatMode;)V
    .locals 16
    .param p1, "chatId"    # Ljava/lang/String;
    .param p2, "subject"    # Ljava/lang/String;
    .param p4, "contributionId"    # Ljava/lang/String;
    .param p5, "prevContributionId"    # Ljava/lang/String;
    .param p6, "userAlias"    # Ljava/lang/String;
    .param p7, "serviceType"    # Lcom/sec/internal/constants/ims/servicemodules/im/params/StartImSessionParams$ServiceType;
    .param p8, "isConf"    # Z
    .param p9, "sdpContentType"    # Ljava/lang/String;
    .param p10, "callback"    # Landroid/os/Message;
    .param p11, "dedicatedBearerCb"    # Landroid/os/Message;
    .param p12, "synchronousCallback"    # Landroid/os/Message;
    .param p13, "sendMessageParams"    # Lcom/sec/internal/constants/ims/servicemodules/im/params/SendMessageParams;
    .param p14, "conversationId"    # Ljava/lang/String;
    .param p15, "inReplyToContributionId"    # Ljava/lang/String;
    .param p16, "isRejoin"    # Z
    .param p17, "isClosedGroupChat"    # Z
    .param p18, "isInviteForBye"    # Z
    .param p19, "serviceId"    # Ljava/lang/String;
    .param p22, "ownImsi"    # Ljava/lang/String;
    .param p23, "chatbotParticipant"    # Z
    .param p24, "chatMode"    # Lcom/sec/internal/constants/ims/servicemodules/im/ChatMode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/sec/ims/util/ImsUri;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/sec/internal/constants/ims/servicemodules/im/params/StartImSessionParams$ServiceType;",
            "Z",
            "Ljava/lang/String;",
            "Landroid/os/Message;",
            "Landroid/os/Message;",
            "Landroid/os/Message;",
            "Lcom/sec/internal/constants/ims/servicemodules/im/params/SendMessageParams;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "ZZZ",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Z",
            "Lcom/sec/internal/constants/ims/servicemodules/im/ChatMode;",
            ")V"
        }
    .end annotation

    .line 68
    .local p3, "receivers":Ljava/util/List;, "Ljava/util/List<Lcom/sec/ims/util/ImsUri;>;"
    .local p20, "acceptTypes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p21, "acceptWrappedTypes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 69
    move-object/from16 v1, p1

    iput-object v1, v0, Lcom/sec/internal/constants/ims/servicemodules/im/params/StartImSessionParams;->mChatId:Ljava/lang/String;

    .line 70
    move-object/from16 v2, p2

    iput-object v2, v0, Lcom/sec/internal/constants/ims/servicemodules/im/params/StartImSessionParams;->mSubject:Ljava/lang/String;

    .line 71
    new-instance v3, Ljava/util/ArrayList;

    move-object/from16 v4, p3

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v3, v0, Lcom/sec/internal/constants/ims/servicemodules/im/params/StartImSessionParams;->mReceivers:Ljava/util/List;

    .line 72
    move-object/from16 v3, p4

    iput-object v3, v0, Lcom/sec/internal/constants/ims/servicemodules/im/params/StartImSessionParams;->mContributionId:Ljava/lang/String;

    .line 73
    move-object/from16 v5, p5

    iput-object v5, v0, Lcom/sec/internal/constants/ims/servicemodules/im/params/StartImSessionParams;->mPrevContributionId:Ljava/lang/String;

    .line 74
    move-object/from16 v6, p6

    iput-object v6, v0, Lcom/sec/internal/constants/ims/servicemodules/im/params/StartImSessionParams;->mUserAlias:Ljava/lang/String;

    .line 75
    move-object/from16 v7, p7

    iput-object v7, v0, Lcom/sec/internal/constants/ims/servicemodules/im/params/StartImSessionParams;->mServiceType:Lcom/sec/internal/constants/ims/servicemodules/im/params/StartImSessionParams$ServiceType;

    .line 76
    move/from16 v8, p8

    iput-boolean v8, v0, Lcom/sec/internal/constants/ims/servicemodules/im/params/StartImSessionParams;->mIsConf:Z

    .line 77
    move-object/from16 v9, p9

    iput-object v9, v0, Lcom/sec/internal/constants/ims/servicemodules/im/params/StartImSessionParams;->mSdpContentType:Ljava/lang/String;

    .line 78
    move-object/from16 v10, p10

    iput-object v10, v0, Lcom/sec/internal/constants/ims/servicemodules/im/params/StartImSessionParams;->mCallback:Landroid/os/Message;

    .line 79
    move-object/from16 v11, p12

    iput-object v11, v0, Lcom/sec/internal/constants/ims/servicemodules/im/params/StartImSessionParams;->mSynchronousCallback:Landroid/os/Message;

    .line 80
    move-object/from16 v12, p11

    iput-object v12, v0, Lcom/sec/internal/constants/ims/servicemodules/im/params/StartImSessionParams;->mDedicatedBearerCallback:Landroid/os/Message;

    .line 81
    move-object/from16 v13, p13

    iput-object v13, v0, Lcom/sec/internal/constants/ims/servicemodules/im/params/StartImSessionParams;->mSendMessageParams:Lcom/sec/internal/constants/ims/servicemodules/im/params/SendMessageParams;

    .line 82
    move-object/from16 v14, p14

    iput-object v14, v0, Lcom/sec/internal/constants/ims/servicemodules/im/params/StartImSessionParams;->mConversationId:Ljava/lang/String;

    .line 83
    move-object/from16 v15, p15

    iput-object v15, v0, Lcom/sec/internal/constants/ims/servicemodules/im/params/StartImSessionParams;->mInReplyToContributionId:Ljava/lang/String;

    .line 84
    move/from16 v1, p16

    iput-boolean v1, v0, Lcom/sec/internal/constants/ims/servicemodules/im/params/StartImSessionParams;->mIsRejoin:Z

    .line 85
    move/from16 v1, p17

    iput-boolean v1, v0, Lcom/sec/internal/constants/ims/servicemodules/im/params/StartImSessionParams;->mIsClosedGroupChat:Z

    .line 86
    move/from16 v1, p18

    iput-boolean v1, v0, Lcom/sec/internal/constants/ims/servicemodules/im/params/StartImSessionParams;->mIsInviteForBye:Z

    .line 87
    move-object/from16 v1, p19

    iput-object v1, v0, Lcom/sec/internal/constants/ims/servicemodules/im/params/StartImSessionParams;->mServiceId:Ljava/lang/String;

    .line 88
    new-instance v1, Ljava/util/ArrayList;

    move-object/from16 v2, p20

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Lcom/sec/internal/constants/ims/servicemodules/im/params/StartImSessionParams;->mAcceptTypes:Ljava/util/List;

    .line 89
    new-instance v1, Ljava/util/ArrayList;

    move-object/from16 v2, p21

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Lcom/sec/internal/constants/ims/servicemodules/im/params/StartImSessionParams;->mAcceptWrappedTypes:Ljava/util/List;

    .line 90
    move-object/from16 v1, p22

    iput-object v1, v0, Lcom/sec/internal/constants/ims/servicemodules/im/params/StartImSessionParams;->mOwnImsi:Ljava/lang/String;

    .line 91
    move/from16 v1, p23

    iput-boolean v1, v0, Lcom/sec/internal/constants/ims/servicemodules/im/params/StartImSessionParams;->mIsChatbotParticipant:Z

    .line 92
    move-object/from16 v1, p24

    iput-object v1, v0, Lcom/sec/internal/constants/ims/servicemodules/im/params/StartImSessionParams;->mChatMode:Lcom/sec/internal/constants/ims/servicemodules/im/ChatMode;

    .line 93
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 97
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "StartImSessionParams [mChatId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/params/StartImSessionParams;->mChatId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mSubject="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/params/StartImSessionParams;->mSubject:Ljava/lang/String;

    .line 98
    invoke-static {v1}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mReceivers="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/params/StartImSessionParams;->mReceivers:Ljava/util/List;

    .line 99
    invoke-static {v1}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mContributionId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/params/StartImSessionParams;->mContributionId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mPrevContributionId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/params/StartImSessionParams;->mPrevContributionId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mConversationId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/params/StartImSessionParams;->mConversationId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mInReplyToContributionId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/params/StartImSessionParams;->mInReplyToContributionId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mUserAlias="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/params/StartImSessionParams;->mUserAlias:Ljava/lang/String;

    .line 104
    invoke-static {v1}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mServiceType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/params/StartImSessionParams;->mServiceType:Lcom/sec/internal/constants/ims/servicemodules/im/params/StartImSessionParams$ServiceType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mIsConf="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/params/StartImSessionParams;->mIsConf:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mSdpContentType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/params/StartImSessionParams;->mSdpContentType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mCallback="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/params/StartImSessionParams;->mCallback:Landroid/os/Message;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mSendMessageParams="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/params/StartImSessionParams;->mSendMessageParams:Lcom/sec/internal/constants/ims/servicemodules/im/params/SendMessageParams;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mIsRejoin="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/params/StartImSessionParams;->mIsRejoin:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mIsClosedGroupChat="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/params/StartImSessionParams;->mIsClosedGroupChat:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mIsInviteForBye="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/params/StartImSessionParams;->mIsInviteForBye:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mServiceId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/params/StartImSessionParams;->mServiceId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mAcceptTypes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/params/StartImSessionParams;->mAcceptTypes:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mAcceptWrappedTypes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/params/StartImSessionParams;->mAcceptWrappedTypes:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mOwnImsi="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/params/StartImSessionParams;->mOwnImsi:Ljava/lang/String;

    .line 116
    invoke-static {v1}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mIsChatbotParticipant="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/params/StartImSessionParams;->mIsChatbotParticipant:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mChatMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/params/StartImSessionParams;->mChatMode:Lcom/sec/internal/constants/ims/servicemodules/im/ChatMode;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 97
    return-object v0
.end method
