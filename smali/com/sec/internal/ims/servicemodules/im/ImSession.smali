.class public Lcom/sec/internal/ims/servicemodules/im/ImSession;
.super Lcom/sec/internal/helper/StateMachine;
.source "ImSession.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/internal/ims/servicemodules/im/ImSession$ChatFallbackMech;,
        Lcom/sec/internal/ims/servicemodules/im/ImSession$SessionState;
    }
.end annotation


# static fields
.field private static final DEFAULT_WAKE_LOCK_TIMEOUT:J = 0xbb8L

.field protected static final DEFER_WITHOUT_STARTSESSION:I = 0x0

.field protected static final DEFER_WITH_STARTSESSION:I = 0x1

.field private static final LOG_TAG:Ljava/lang/String;

.field private static final MESSAGE_REVOKE_OPERATION_TIME:I = 0x2710

.field private static final REQUEST_THRESHOLD_TIME:I = 0x1388

.field private static final SEND_MESSAGE_THRESHOLD_TIME:I = 0x12c


# instance fields
.field protected final mAcceptTypes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected final mAcceptWrappedTypes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mChatData:Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;

.field private mChatFallbackMech:Lcom/sec/internal/ims/servicemodules/im/ImSession$ChatFallbackMech;

.field private final mChatId:Ljava/lang/String;

.field protected mClosedEvent:Lcom/sec/internal/constants/ims/servicemodules/im/event/ImSessionClosedEvent;

.field protected mClosedReason:Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionClosedReason;

.field protected final mClosedState:Lcom/sec/internal/ims/servicemodules/im/ImSessionClosedState;

.field private final mClosingState:Lcom/sec/internal/ims/servicemodules/im/ImSessionClosingState;

.field private final mComposingActiveUris:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/sec/ims/util/ImsUri;",
            ">;"
        }
    .end annotation
.end field

.field protected mComposingNotificationInterval:I

.field private mConferenceInfoUpdater:Lcom/sec/internal/ims/servicemodules/im/ConferenceInfoUpdater;

.field protected final mConfig:Lcom/sec/internal/ims/servicemodules/im/ImConfig;

.field protected final mCurrentMessages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sec/internal/ims/servicemodules/im/MessageBase;",
            ">;"
        }
    .end annotation
.end field

.field private final mDefaultState:Lcom/sec/internal/ims/servicemodules/im/ImSessionDefaultState;

.field private final mDetailedStateMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/sec/internal/helper/IState;",
            "Lcom/sec/internal/ims/servicemodules/im/ImSession$SessionState;",
            ">;"
        }
    .end annotation
.end field

.field private mDeviceId:Ljava/lang/String;

.field protected final mEstablishedImSessionInfo:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mEstablishedState:Lcom/sec/internal/ims/servicemodules/im/ImSessionEstablishedState;

.field protected final mGetter:Lcom/sec/internal/ims/servicemodules/im/interfaces/IGetter;

.field protected final mImSessionInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo;",
            ">;"
        }
    .end annotation
.end field

.field protected final mImsService:Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;

.field protected mInProgressRequestCallbacks:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/os/Message;",
            ">;"
        }
    .end annotation
.end field

.field private mInReplyToContributionId:Ljava/lang/String;

.field protected mIncomingMessageEvents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingMessageEvent;",
            ">;"
        }
    .end annotation
.end field

.field private final mInitialState:Lcom/sec/internal/ims/servicemodules/im/ImSessionInitialState;

.field private mInitiator:Lcom/sec/ims/util/ImsUri;

.field private mInitiatorAlias:Ljava/lang/String;

.field protected mIsComposing:Z

.field protected mIsOfflineGCInvitation:Z

.field protected mIsRevokeTimerRunning:Z

.field private mIsTimerExpired:Z

.field private mIsTokenUsed:Z

.field protected mLeaderParticipant:Ljava/lang/String;

.field protected final mListener:Lcom/sec/internal/ims/servicemodules/im/listener/ImSessionListener;

.field protected final mMessagesToSendDisplayNotification:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Lcom/sec/internal/ims/servicemodules/im/MessageBase;",
            ">;"
        }
    .end annotation
.end field

.field private final mNeedToRevokeMessages:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected mNewContactValueUri:Lcom/sec/ims/util/ImsUri;

.field private mOwnImsi:Ljava/lang/String;

.field protected final mParticipants:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/sec/ims/util/ImsUri;",
            "Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;",
            ">;"
        }
    .end annotation
.end field

.field protected mPendingEvents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/os/Message;",
            ">;"
        }
    .end annotation
.end field

.field protected final mPendingFileTransfer:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/sec/internal/ims/servicemodules/im/FtMessage;",
            ">;"
        }
    .end annotation
.end field

.field private mPhoneId:I

.field protected final mProcessingFileTransfer:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/sec/internal/ims/servicemodules/im/FtMessage;",
            ">;"
        }
    .end annotation
.end field

.field private mRawHandle:Ljava/lang/Object;

.field protected mRemoteAcceptTypes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected mRemoteAcceptWrappedTypes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mRequestMessageId:Ljava/lang/String;

.field protected mRetryTimer:I

.field private mSdpContentType:Ljava/lang/String;

.field private mSendMessageResponseTimeout:I

.field private final mServiceId:Ljava/lang/String;

.field private final mSlmService:Lcom/sec/internal/interfaces/ims/servicemodules/im/ISlmServiceInterface;

.field protected final mStartingState:Lcom/sec/internal/ims/servicemodules/im/ImSessionStartingState;

.field protected mSupportedFeatures:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet<",
            "Lcom/sec/internal/constants/ims/servicemodules/im/SupportedFeature;",
            ">;"
        }
    .end annotation
.end field

.field protected mSwapUriType:Z

.field private mThreadId:I

.field protected mUriGenerator:Lcom/sec/internal/ims/util/UriGenerator;

.field private final mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 90
    const-class v0, Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>(Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;)V
    .locals 14
    .param p1, "builder"    # Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;

    .line 180
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ImSession#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->mChatData:Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;

    const/4 v2, 0x4

    const/4 v3, 0x0

    if-nez v1, :cond_0

    iget-object v1, p1, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->mChatId:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object v1, p1, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->mChatData:Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->getChatId()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->mLooper:Landroid/os/Looper;

    invoke-direct {p0, v0, v1}, Lcom/sec/internal/helper/StateMachine;-><init>(Ljava/lang/String;Landroid/os/Looper;)V

    .line 99
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mProcessingFileTransfer:Ljava/util/ArrayList;

    .line 101
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mPendingFileTransfer:Ljava/util/ArrayList;

    .line 109
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mImSessionInfoList:Ljava/util/List;

    .line 110
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mEstablishedImSessionInfo:Ljava/util/ArrayList;

    .line 111
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mParticipants:Ljava/util/HashMap;

    .line 113
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mComposingActiveUris:Ljava/util/Set;

    .line 114
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mDetailedStateMap:Ljava/util/Map;

    .line 119
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mMessagesToSendDisplayNotification:Ljava/util/ArrayDeque;

    .line 127
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mCurrentMessages:Ljava/util/List;

    .line 128
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mNeedToRevokeMessages:Ljava/util/Map;

    .line 131
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mThreadId:I

    .line 146
    iput v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mRetryTimer:I

    .line 147
    const-string v0, ""

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mOwnImsi:Ljava/lang/String;

    .line 148
    iput v3, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mPhoneId:I

    .line 150
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionClosedReason;->NONE:Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionClosedReason;

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mClosedReason:Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionClosedReason;

    .line 156
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mIncomingMessageEvents:Ljava/util/List;

    .line 161
    const/16 v0, 0x78

    iput v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mComposingNotificationInterval:I

    .line 167
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImSession$ChatFallbackMech;->NONE:Lcom/sec/internal/ims/servicemodules/im/ImSession$ChatFallbackMech;

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mChatFallbackMech:Lcom/sec/internal/ims/servicemodules/im/ImSession$ChatFallbackMech;

    .line 171
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mInProgressRequestCallbacks:Ljava/util/Set;

    .line 172
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mPendingEvents:Ljava/util/List;

    .line 182
    iget-object v0, p1, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->mListener:Lcom/sec/internal/ims/servicemodules/im/listener/ImSessionListener;

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mListener:Lcom/sec/internal/ims/servicemodules/im/listener/ImSessionListener;

    .line 183
    iget-object v0, p1, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->mConfig:Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mConfig:Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    .line 184
    iget-object v0, p1, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->mImsService:Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mImsService:Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;

    .line 185
    iget-object v0, p1, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->mSlmService:Lcom/sec/internal/interfaces/ims/servicemodules/im/ISlmServiceInterface;

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mSlmService:Lcom/sec/internal/interfaces/ims/servicemodules/im/ISlmServiceInterface;

    .line 186
    iget-object v0, p1, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->mUriGenerator:Lcom/sec/internal/ims/util/UriGenerator;

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mUriGenerator:Lcom/sec/internal/ims/util/UriGenerator;

    .line 188
    iget-object v0, p1, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->mChatData:Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;

    if-eqz v0, :cond_1

    .line 189
    iget-object v0, p1, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->mChatData:Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mChatData:Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;

    goto :goto_1

    .line 191
    :cond_1
    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;

    iget-object v2, p1, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->mChatId:Ljava/lang/String;

    iget-object v3, p1, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->mOwnNumber:Ljava/lang/String;

    iget-object v4, p1, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->mOwnGroupAlias:Ljava/lang/String;

    iget-object v5, p1, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->mSubject:Ljava/lang/String;

    iget-object v6, p1, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->mChatType:Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;

    iget-object v7, p1, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->mDirection:Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    iget-object v8, p1, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->mConversationId:Ljava/lang/String;

    iget-object v9, p1, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->mContributionId:Ljava/lang/String;

    iget-object v10, p1, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->mOwnIMSI:Ljava/lang/String;

    iget-object v11, p1, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->mIconPath:Ljava/lang/String;

    iget-object v12, p1, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->mChatMode:Lcom/sec/internal/constants/ims/servicemodules/im/ChatMode;

    iget-object v13, p1, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->mSessionUri:Lcom/sec/ims/util/ImsUri;

    move-object v1, v0

    invoke-direct/range {v1 .. v13}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/ChatMode;Lcom/sec/ims/util/ImsUri;)V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mChatData:Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;

    .line 196
    :goto_1
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mChatData:Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->getChatId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mChatId:Ljava/lang/String;

    .line 197
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mParticipants:Ljava/util/HashMap;

    iget-object v1, p1, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->mParticipants:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 199
    iget-object v0, p1, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->mDirection:Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;->INCOMING:Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    if-ne v0, v1, :cond_3

    .line 200
    iget-object v0, p1, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->mParticipantsUri:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/ims/util/ImsUri;

    .line 201
    .local v1, "uri":Lcom/sec/ims/util/ImsUri;
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mParticipants:Ljava/util/HashMap;

    new-instance v3, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;

    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mChatId:Ljava/lang/String;

    sget-object v5, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;->INVITED:Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;

    invoke-direct {v3, v4, v5, v1}, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;-><init>(Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;Lcom/sec/ims/util/ImsUri;)V

    invoke-virtual {v2, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    .end local v1    # "uri":Lcom/sec/ims/util/ImsUri;
    goto :goto_2

    :cond_2
    goto :goto_4

    .line 204
    :cond_3
    iget-object v0, p1, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->mParticipantsUri:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/ims/util/ImsUri;

    .line 205
    .restart local v1    # "uri":Lcom/sec/ims/util/ImsUri;
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mParticipants:Ljava/util/HashMap;

    new-instance v3, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;

    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mChatId:Ljava/lang/String;

    sget-object v5, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;->INITIAL:Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;

    invoke-direct {v3, v4, v5, v1}, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;-><init>(Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;Lcom/sec/ims/util/ImsUri;)V

    invoke-virtual {v2, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    .end local v1    # "uri":Lcom/sec/ims/util/ImsUri;
    goto :goto_3

    .line 209
    :cond_4
    :goto_4
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getPhoneId()I

    move-result v0

    iput v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mPhoneId:I

    .line 210
    iget-object v0, p1, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->mSdpContentType:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mSdpContentType:Ljava/lang/String;

    .line 211
    iget v0, p1, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->mThreadId:I

    iput v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mThreadId:I

    .line 212
    iget-object v0, p1, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->mRequestMessageId:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mRequestMessageId:Ljava/lang/String;

    .line 213
    iget-object v0, p1, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->mRawHandle:Ljava/lang/Object;

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mRawHandle:Ljava/lang/Object;

    .line 214
    iget-object v0, p1, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->mGetter:Lcom/sec/internal/ims/servicemodules/im/interfaces/IGetter;

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mGetter:Lcom/sec/internal/ims/servicemodules/im/interfaces/IGetter;

    .line 216
    iget v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mPhoneId:I

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getRcsStrategy(I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object v0

    const-string/jumbo v1, "sendmsg_resp_timeout"

    invoke-interface {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->intSetting(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mSendMessageResponseTimeout:I

    .line 217
    iget-object v0, p1, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->mServiceId:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mServiceId:Ljava/lang/String;

    .line 218
    iget-object v0, p1, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->mAcceptTypes:Ljava/util/List;

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mAcceptTypes:Ljava/util/List;

    .line 219
    iget-object v0, p1, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->mAcceptWrappedTypes:Ljava/util/List;

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mAcceptWrappedTypes:Ljava/util/List;

    .line 220
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mNeedToRevokeMessages:Ljava/util/Map;

    iget-object v1, p1, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->mNeedToRevokeMessages:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 222
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 224
    .local v0, "pm":Landroid/os/PowerManager;
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 225
    invoke-virtual {v1, v2}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 227
    new-instance v1, Lcom/sec/internal/ims/servicemodules/im/ImSessionDefaultState;

    iget v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mPhoneId:I

    invoke-direct {v1, v2, p0}, Lcom/sec/internal/ims/servicemodules/im/ImSessionDefaultState;-><init>(ILcom/sec/internal/ims/servicemodules/im/ImSession;)V

    iput-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mDefaultState:Lcom/sec/internal/ims/servicemodules/im/ImSessionDefaultState;

    .line 228
    new-instance v1, Lcom/sec/internal/ims/servicemodules/im/ImSessionInitialState;

    iget v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mPhoneId:I

    invoke-direct {v1, v2, p0}, Lcom/sec/internal/ims/servicemodules/im/ImSessionInitialState;-><init>(ILcom/sec/internal/ims/servicemodules/im/ImSession;)V

    iput-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mInitialState:Lcom/sec/internal/ims/servicemodules/im/ImSessionInitialState;

    .line 229
    new-instance v1, Lcom/sec/internal/ims/servicemodules/im/ImSessionStartingState;

    iget v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mPhoneId:I

    invoke-direct {v1, v2, p0}, Lcom/sec/internal/ims/servicemodules/im/ImSessionStartingState;-><init>(ILcom/sec/internal/ims/servicemodules/im/ImSession;)V

    iput-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mStartingState:Lcom/sec/internal/ims/servicemodules/im/ImSessionStartingState;

    .line 230
    new-instance v1, Lcom/sec/internal/ims/servicemodules/im/ImSessionEstablishedState;

    iget v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mPhoneId:I

    invoke-direct {v1, v2, p0}, Lcom/sec/internal/ims/servicemodules/im/ImSessionEstablishedState;-><init>(ILcom/sec/internal/ims/servicemodules/im/ImSession;)V

    iput-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mEstablishedState:Lcom/sec/internal/ims/servicemodules/im/ImSessionEstablishedState;

    .line 231
    new-instance v1, Lcom/sec/internal/ims/servicemodules/im/ImSessionClosingState;

    iget v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mPhoneId:I

    invoke-direct {v1, v2, p0}, Lcom/sec/internal/ims/servicemodules/im/ImSessionClosingState;-><init>(ILcom/sec/internal/ims/servicemodules/im/ImSession;)V

    iput-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mClosingState:Lcom/sec/internal/ims/servicemodules/im/ImSessionClosingState;

    .line 232
    new-instance v1, Lcom/sec/internal/ims/servicemodules/im/ImSessionClosedState;

    iget v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mPhoneId:I

    invoke-direct {v1, v2, p0}, Lcom/sec/internal/ims/servicemodules/im/ImSessionClosedState;-><init>(ILcom/sec/internal/ims/servicemodules/im/ImSession;)V

    iput-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mClosedState:Lcom/sec/internal/ims/servicemodules/im/ImSessionClosedState;

    .line 233
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mConferenceInfoUpdater:Lcom/sec/internal/ims/servicemodules/im/ConferenceInfoUpdater;

    .line 234
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->initState()V

    .line 235
    return-void
.end method

.method private cancelInProgressChatMsg(Lcom/sec/internal/ims/servicemodules/im/ImMessage;ZLcom/sec/internal/constants/ims/servicemodules/im/ImError;)V
    .locals 3
    .param p1, "imMsg"    # Lcom/sec/internal/ims/servicemodules/im/ImMessage;
    .param p2, "isFallback"    # Z
    .param p3, "error"    # Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    .line 1843
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/ImMessage;->getDirection()Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    move-result-object v0

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;->OUTGOING:Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    if-ne v0, v1, :cond_3

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/ImMessage;->getStatus()Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;

    move-result-object v0

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;->TO_SEND:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;

    if-eq v0, v1, :cond_0

    .line 1844
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/ImMessage;->getStatus()Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;

    move-result-object v0

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;->SENDING:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;

    if-ne v0, v1, :cond_3

    :cond_0
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->OUTOFSERVICE:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    if-eq p3, v0, :cond_3

    .line 1846
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cancelInProgressChatMsg : mark msg failed "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/ImMessage;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->logi(Ljava/lang/String;)V

    .line 1847
    if-eqz p2, :cond_2

    .line 1848
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->isGroupChat()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getParticipantsUri()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/internal/ims/util/ChatbotUriUtil;->hasChatbotUri(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1849
    const-string v0, "cancelInProgressChatMsg : no fallback in case of chatbots"

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->logi(Ljava/lang/String;)V

    .line 1850
    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;->DEVICE_UNREGISTERED:Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;

    invoke-direct {v0, p3, v1}, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;-><init>(Lcom/sec/internal/constants/ims/servicemodules/im/ImError;Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;)V

    new-instance v1, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;

    sget-object v2, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;->DISPLAY_ERROR:Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;

    invoke-direct {v1, v2}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;-><init>(Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;)V

    invoke-virtual {p1, v0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImMessage;->onSendMessageDone(Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;)V

    goto :goto_0

    .line 1853
    :cond_1
    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->REMOTE_TEMPORARILY_UNAVAILABLE:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;->DEVICE_UNREGISTERED:Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;

    invoke-direct {v0, v1, v2}, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;-><init>(Lcom/sec/internal/constants/ims/servicemodules/im/ImError;Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;)V

    new-instance v1, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;

    sget-object v2, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;->FALLBACK_TO_LEGACY:Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;

    invoke-direct {v1, v2}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;-><init>(Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;)V

    invoke-virtual {p1, v0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImMessage;->onSendMessageDone(Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;)V

    goto :goto_0

    .line 1857
    :cond_2
    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;->DEVICE_UNREGISTERED:Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;

    invoke-direct {v0, p3, v1}, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;-><init>(Lcom/sec/internal/constants/ims/servicemodules/im/ImError;Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;)V

    new-instance v1, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;

    sget-object v2, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;->DISPLAY_ERROR:Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;

    invoke-direct {v1, v2}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;-><init>(Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;)V

    invoke-virtual {p1, v0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImMessage;->onSendMessageDone(Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;)V

    .line 1861
    :cond_3
    :goto_0
    return-void
.end method

.method private cancelInProgressFTInComingMsg(Lcom/sec/internal/ims/servicemodules/im/FtMessage;ZLcom/sec/internal/constants/ims/servicemodules/im/ImError;)V
    .locals 2
    .param p1, "ftMsg"    # Lcom/sec/internal/ims/servicemodules/im/FtMessage;
    .param p2, "isFallback"    # Z
    .param p3, "error"    # Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    .line 1864
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getStateId()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 1865
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cancelInProgressFTInComingMsg : mPendingMessages FtMessage.getStateId() = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getStateId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->logi(Ljava/lang/String;)V

    .line 1866
    iget-boolean v0, p1, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->mIsWifiUsed:Z

    if-eqz v0, :cond_0

    .line 1867
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;->WIFI_DISCONNECTED:Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    invoke-virtual {p1, v0}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->cancelTransfer(Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;)V

    goto :goto_0

    .line 1869
    :cond_0
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;->DEVICE_UNREGISTERED:Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    invoke-virtual {p1, v0}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->cancelTransfer(Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;)V

    .line 1872
    :cond_1
    :goto_0
    return-void
.end method

.method private cancelInProgressFTOutGoingMsg(Lcom/sec/internal/ims/servicemodules/im/FtMessage;ZLcom/sec/internal/constants/ims/servicemodules/im/ImError;)V
    .locals 3
    .param p1, "ftMsg"    # Lcom/sec/internal/ims/servicemodules/im/FtMessage;
    .param p2, "isFallback"    # Z
    .param p3, "error"    # Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    .line 1876
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getStateId()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 1877
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cancelInProgressFTOutGoingMsg : mPendingMessages FtMessage.getStateId() = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getStateId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->logi(Ljava/lang/String;)V

    .line 1878
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->setFtCompleteCallback(Landroid/os/Message;)V

    .line 1879
    iget-boolean v0, p1, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->mIsWifiUsed:Z

    if-eqz v0, :cond_0

    .line 1880
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;->WIFI_DISCONNECTED:Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    invoke-virtual {p1, v0}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->cancelTransfer(Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;)V

    goto :goto_0

    .line 1882
    :cond_0
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;->DEVICE_UNREGISTERED:Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    invoke-virtual {p1, v0}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->cancelTransfer(Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;)V

    goto :goto_0

    .line 1884
    :cond_1
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getStateId()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_4

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getStatus()Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;

    move-result-object v0

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;->SENT:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;

    if-eq v0, v1, :cond_4

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->isFtSms()Z

    move-result v0

    if-nez v0, :cond_4

    .line 1885
    if-eqz p2, :cond_3

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->isGroupChat()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getParticipantsUri()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/internal/ims/util/ChatbotUriUtil;->hasChatbotUri(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1886
    :cond_2
    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->REMOTE_TEMPORARILY_UNAVAILABLE:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;->DEVICE_UNREGISTERED:Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;

    invoke-direct {v0, v1, v2}, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;-><init>(Lcom/sec/internal/constants/ims/servicemodules/im/ImError;Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;)V

    new-instance v1, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;

    sget-object v2, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;->FALLBACK_TO_LEGACY:Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;

    invoke-direct {v1, v2}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;-><init>(Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;)V

    invoke-virtual {p1, v0, v1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->onSendMessageDone(Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;)V

    goto :goto_0

    .line 1889
    :cond_3
    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;->DEVICE_UNREGISTERED:Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;

    invoke-direct {v0, p3, v1}, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;-><init>(Lcom/sec/internal/constants/ims/servicemodules/im/ImError;Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;)V

    new-instance v1, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;

    sget-object v2, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;->DISPLAY_ERROR:Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;

    invoke-direct {v1, v2}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;-><init>(Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;)V

    invoke-virtual {p1, v0, v1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->onSendMessageDone(Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;)V

    .line 1893
    :cond_4
    :goto_0
    return-void
.end method

.method private getRcsStrategy()Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;
    .locals 1

    .line 2421
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mGetter:Lcom/sec/internal/ims/servicemodules/im/interfaces/IGetter;

    invoke-interface {v0}, Lcom/sec/internal/ims/servicemodules/im/interfaces/IGetter;->getRcsStrategy()Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object v0

    return-object v0
.end method

.method private hasImSessionInfo(Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo$ImSessionState;)Z
    .locals 3
    .param p1, "state"    # Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo$ImSessionState;

    .line 2190
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mImSessionInfoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo;

    .line 2191
    .local v1, "info":Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo;
    iget-object v2, v1, Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo;->mState:Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo$ImSessionState;

    if-ne v2, p1, :cond_0

    .line 2192
    const/4 v0, 0x1

    return v0

    .line 2194
    .end local v1    # "info":Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo;
    :cond_0
    goto :goto_0

    .line 2195
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private hasImSessionInfo(Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo$SessionType;)Z
    .locals 3
    .param p1, "type"    # Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo$SessionType;

    .line 2205
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mImSessionInfoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo;

    .line 2206
    .local v1, "info":Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo;
    iget-object v2, v1, Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo;->mSessionType:Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo$SessionType;

    if-ne v2, p1, :cond_0

    .line 2207
    const/4 v0, 0x1

    return v0

    .line 2209
    .end local v1    # "info":Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo;
    :cond_0
    goto :goto_0

    .line 2210
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private initState()V
    .locals 3

    .line 839
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mDefaultState:Lcom/sec/internal/ims/servicemodules/im/ImSessionDefaultState;

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->addState(Lcom/sec/internal/helper/State;)V

    .line 840
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mInitialState:Lcom/sec/internal/ims/servicemodules/im/ImSessionInitialState;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mDefaultState:Lcom/sec/internal/ims/servicemodules/im/ImSessionDefaultState;

    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->addState(Lcom/sec/internal/helper/State;Lcom/sec/internal/helper/State;)V

    .line 841
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mStartingState:Lcom/sec/internal/ims/servicemodules/im/ImSessionStartingState;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mDefaultState:Lcom/sec/internal/ims/servicemodules/im/ImSessionDefaultState;

    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->addState(Lcom/sec/internal/helper/State;Lcom/sec/internal/helper/State;)V

    .line 842
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mEstablishedState:Lcom/sec/internal/ims/servicemodules/im/ImSessionEstablishedState;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mDefaultState:Lcom/sec/internal/ims/servicemodules/im/ImSessionDefaultState;

    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->addState(Lcom/sec/internal/helper/State;Lcom/sec/internal/helper/State;)V

    .line 843
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mClosingState:Lcom/sec/internal/ims/servicemodules/im/ImSessionClosingState;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mDefaultState:Lcom/sec/internal/ims/servicemodules/im/ImSessionDefaultState;

    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->addState(Lcom/sec/internal/helper/State;Lcom/sec/internal/helper/State;)V

    .line 844
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mClosedState:Lcom/sec/internal/ims/servicemodules/im/ImSessionClosedState;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mInitialState:Lcom/sec/internal/ims/servicemodules/im/ImSessionInitialState;

    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->addState(Lcom/sec/internal/helper/State;Lcom/sec/internal/helper/State;)V

    .line 845
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mInitialState:Lcom/sec/internal/ims/servicemodules/im/ImSessionInitialState;

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->setInitialState(Lcom/sec/internal/helper/State;)V

    .line 846
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->start()V

    .line 848
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mDetailedStateMap:Ljava/util/Map;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mInitialState:Lcom/sec/internal/ims/servicemodules/im/ImSessionInitialState;

    sget-object v2, Lcom/sec/internal/ims/servicemodules/im/ImSession$SessionState;->INITIAL:Lcom/sec/internal/ims/servicemodules/im/ImSession$SessionState;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 849
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mDetailedStateMap:Ljava/util/Map;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mStartingState:Lcom/sec/internal/ims/servicemodules/im/ImSessionStartingState;

    sget-object v2, Lcom/sec/internal/ims/servicemodules/im/ImSession$SessionState;->STARTING:Lcom/sec/internal/ims/servicemodules/im/ImSession$SessionState;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 850
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mDetailedStateMap:Ljava/util/Map;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mEstablishedState:Lcom/sec/internal/ims/servicemodules/im/ImSessionEstablishedState;

    sget-object v2, Lcom/sec/internal/ims/servicemodules/im/ImSession$SessionState;->ESTABLISHED:Lcom/sec/internal/ims/servicemodules/im/ImSession$SessionState;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 851
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mDetailedStateMap:Ljava/util/Map;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mClosingState:Lcom/sec/internal/ims/servicemodules/im/ImSessionClosingState;

    sget-object v2, Lcom/sec/internal/ims/servicemodules/im/ImSession$SessionState;->CLOSING:Lcom/sec/internal/ims/servicemodules/im/ImSession$SessionState;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 852
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mDetailedStateMap:Ljava/util/Map;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mClosedState:Lcom/sec/internal/ims/servicemodules/im/ImSessionClosedState;

    sget-object v2, Lcom/sec/internal/ims/servicemodules/im/ImSession$SessionState;->CLOSED:Lcom/sec/internal/ims/servicemodules/im/ImSession$SessionState;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 853
    return-void
.end method

.method private isRespondDisplay()Z
    .locals 1

    .line 1324
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->isGroupChat()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mConfig:Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->getRespondDisplay()Z

    move-result v0

    if-eqz v0, :cond_0

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

.method private isSessionTimeoutRequired()Z
    .locals 2

    .line 2045
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getServiceId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getServiceId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "+g.3gpp.icsi-ref=\"urn%3Aurn-7%3A3gpp-service.ims.icsi.gsma.sharedsketch\""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2046
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getServiceId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "+g.3gpp.icsi-ref=\"urn%3Aurn-7%3A3gpp-service.ims.icsi.gsma.sharedmap\""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 2045
    :goto_1
    return v0
.end method

.method private isSessionTimeoutSupported()Z
    .locals 1

    .line 2019
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mConfig:Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->getTimerIdle()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->isGroupChat()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->isSessionTimeoutRequired()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic lambda$processPendingFtHttp$1(Lcom/sec/internal/ims/servicemodules/im/MessageBase;Lcom/sec/internal/ims/servicemodules/im/MessageBase;)I
    .locals 7
    .param p0, "m1"    # Lcom/sec/internal/ims/servicemodules/im/MessageBase;
    .param p1, "m2"    # Lcom/sec/internal/ims/servicemodules/im/MessageBase;

    .line 1384
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getInsertedTimestamp()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getInsertedTimestamp()J

    move-result-wide v2

    sub-long/2addr v0, v2

    .line 1385
    .local v0, "value":J
    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    const/4 v5, -0x1

    const/4 v6, 0x1

    if-nez v4, :cond_1

    .line 1386
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getId()I

    move-result v2

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getId()I

    move-result v3

    if-ge v2, v3, :cond_0

    goto :goto_0

    :cond_0
    move v5, v6

    :goto_0
    return v5

    .line 1388
    :cond_1
    cmp-long v2, v0, v2

    if-gez v2, :cond_2

    goto :goto_1

    :cond_2
    move v5, v6

    :goto_1
    return v5
.end method

.method static synthetic lambda$processPendingNotifications$2(Lcom/sec/internal/ims/servicemodules/im/MessageBase;Lcom/sec/internal/ims/servicemodules/im/MessageBase;)I
    .locals 7
    .param p0, "m1"    # Lcom/sec/internal/ims/servicemodules/im/MessageBase;
    .param p1, "m2"    # Lcom/sec/internal/ims/servicemodules/im/MessageBase;

    .line 1407
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getInsertedTimestamp()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getInsertedTimestamp()J

    move-result-wide v2

    sub-long/2addr v0, v2

    .line 1408
    .local v0, "value":J
    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    const/4 v5, -0x1

    const/4 v6, 0x1

    if-nez v4, :cond_1

    .line 1409
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getId()I

    move-result v2

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getId()I

    move-result v3

    if-ge v2, v3, :cond_0

    goto :goto_0

    :cond_0
    move v5, v6

    :goto_0
    return v5

    .line 1411
    :cond_1
    cmp-long v2, v0, v2

    if-gez v2, :cond_2

    goto :goto_1

    :cond_2
    move v5, v6

    :goto_1
    return v5
.end method

.method static synthetic lambda$readMessages$0(Lcom/sec/internal/ims/servicemodules/im/MessageBase;Lcom/sec/internal/ims/servicemodules/im/MessageBase;)I
    .locals 7
    .param p0, "m1"    # Lcom/sec/internal/ims/servicemodules/im/MessageBase;
    .param p1, "m2"    # Lcom/sec/internal/ims/servicemodules/im/MessageBase;

    .line 1242
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getInsertedTimestamp()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getInsertedTimestamp()J

    move-result-wide v2

    sub-long/2addr v0, v2

    .line 1243
    .local v0, "value":J
    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    const/4 v5, -0x1

    const/4 v6, 0x1

    if-nez v4, :cond_1

    .line 1244
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getId()I

    move-result v2

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getId()I

    move-result v3

    if-ge v2, v3, :cond_0

    goto :goto_0

    :cond_0
    move v5, v6

    :goto_0
    return v5

    .line 1246
    :cond_1
    cmp-long v2, v0, v2

    if-gez v2, :cond_2

    goto :goto_1

    :cond_2
    move v5, v6

    :goto_1
    return v5
.end method

.method private processPendingFtMessage(Lcom/sec/internal/ims/servicemodules/im/FtMessage;)V
    .locals 2
    .param p1, "msg"    # Lcom/sec/internal/ims/servicemodules/im/FtMessage;

    .line 1462
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->isAutoResumable()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1463
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->isOutgoing()Z

    move-result v0

    const/4 v1, 0x2

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getStateId()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 1464
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->resumeTransferFile(Lcom/sec/internal/ims/servicemodules/im/FtMessage;)V

    goto :goto_0

    .line 1465
    :cond_0
    instance-of v0, p1, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getStateId()I

    move-result v0

    if-ne v0, v1, :cond_1

    .line 1466
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->receiveTransfer(Lcom/sec/internal/ims/servicemodules/im/FtMessage;Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;Z)V

    goto :goto_0

    .line 1467
    :cond_1
    instance-of v0, p1, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage;

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getStateId()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    .line 1468
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getStatus()Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;

    move-result-object v0

    .line 1469
    .local v0, "status":Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->isOutgoing()Z

    move-result v1

    if-eqz v1, :cond_4

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;->TO_SEND:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;

    if-eq v0, v1, :cond_2

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;->SENDING:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;

    if-ne v0, v1, :cond_4

    .line 1470
    :cond_2
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->sendImMessage(Lcom/sec/internal/ims/servicemodules/im/MessageBase;)V

    goto :goto_0

    .line 1472
    .end local v0    # "status":Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;
    :cond_3
    invoke-static {}, Lcom/sec/internal/ims/rcs/util/RcsUtils$UiUtils;->isPctMode()Z

    move-result v0

    if-nez v0, :cond_4

    iget v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mPhoneId:I

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getRcsStrategy(I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object v0

    const-string v1, "auto_resend_failed_ft"

    invoke-interface {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->boolSetting(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->isOutgoing()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1473
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getCancelReason()Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    move-result-object v0

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;->CANCELED_BY_USER:Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    if-eq v0, v1, :cond_4

    .line 1474
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->resumeTransferFile(Lcom/sec/internal/ims/servicemodules/im/FtMessage;)V

    nop

    .line 1477
    :cond_4
    :goto_0
    return-void
.end method

.method private processPendingImMessage(Lcom/sec/internal/ims/servicemodules/im/ImMessage;)V
    .locals 2
    .param p1, "msg"    # Lcom/sec/internal/ims/servicemodules/im/ImMessage;

    .line 1450
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/ImMessage;->getStatus()Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;

    move-result-object v0

    .line 1451
    .local v0, "status":Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/ImMessage;->isOutgoing()Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;->TO_SEND:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;->SENDING:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;

    if-ne v0, v1, :cond_1

    .line 1452
    :cond_0
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->sendImMessage(Lcom/sec/internal/ims/servicemodules/im/MessageBase;)V

    .line 1454
    :cond_1
    return-void
.end method

.method private setSubject(Ljava/lang/String;)V
    .locals 1
    .param p1, "subject"    # Ljava/lang/String;

    .line 458
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mChatData:Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;

    invoke-virtual {v0, p1}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->setSubject(Ljava/lang/String;)V

    .line 459
    return-void
.end method


# virtual methods
.method protected abortAllHttpFtOperations()V
    .locals 6

    .line 1781
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "abortAllHttpFtOperations :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->logi(Ljava/lang/String;)V

    .line 1783
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mGetter:Lcom/sec/internal/ims/servicemodules/im/interfaces/IGetter;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mChatId:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/interfaces/IGetter;->getAllPendingMessages(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/im/MessageBase;

    .line 1784
    .local v1, "m":Lcom/sec/internal/ims/servicemodules/im/MessageBase;
    instance-of v3, v1, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage;

    const/4 v4, 0x2

    if-eqz v3, :cond_0

    .line 1785
    move-object v3, v1

    check-cast v3, Lcom/sec/internal/ims/servicemodules/im/FtMessage;

    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getStateId()I

    move-result v3

    if-ne v3, v4, :cond_1

    .line 1786
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "processDeregistration : mPendingMessages FtMessage.getStateId() = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v4, v1

    check-cast v4, Lcom/sec/internal/ims/servicemodules/im/FtMessage;

    invoke-virtual {v4}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getStateId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->logi(Ljava/lang/String;)V

    .line 1787
    move-object v3, v1

    check-cast v3, Lcom/sec/internal/ims/servicemodules/im/FtMessage;

    invoke-virtual {v3, v2}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->setFtCompleteCallback(Landroid/os/Message;)V

    .line 1788
    move-object v2, v1

    check-cast v2, Lcom/sec/internal/ims/servicemodules/im/FtMessage;

    sget-object v3, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;->DEVICE_UNREGISTERED:Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->cancelTransfer(Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;)V

    goto :goto_1

    .line 1790
    :cond_0
    instance-of v2, v1, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage;

    if-eqz v2, :cond_1

    .line 1791
    move-object v2, v1

    check-cast v2, Lcom/sec/internal/ims/servicemodules/im/FtMessage;

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getStateId()I

    move-result v2

    if-ne v2, v4, :cond_1

    .line 1792
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "processDeregistration : mPendingMessages FtMessage.getStateId() = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v3, v1

    check-cast v3, Lcom/sec/internal/ims/servicemodules/im/FtMessage;

    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getStateId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->logi(Ljava/lang/String;)V

    .line 1793
    move-object v2, v1

    check-cast v2, Lcom/sec/internal/ims/servicemodules/im/FtMessage;

    sget-object v3, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;->DEVICE_UNREGISTERED:Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->cancelTransfer(Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;)V

    .line 1796
    .end local v1    # "m":Lcom/sec/internal/ims/servicemodules/im/MessageBase;
    :cond_1
    :goto_1
    goto :goto_0

    .line 1798
    :cond_2
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mPendingFileTransfer:Ljava/util/ArrayList;

    monitor-enter v0

    .line 1803
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    :try_start_0
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mPendingFileTransfer:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_3

    .line 1804
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mPendingFileTransfer:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/internal/ims/servicemodules/im/FtMessage;

    .line 1805
    .local v3, "m":Lcom/sec/internal/ims/servicemodules/im/FtMessage;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cancel pending file transfer : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getId()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->logi(Ljava/lang/String;)V

    .line 1806
    invoke-virtual {v3, v2}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->setFtCompleteCallback(Landroid/os/Message;)V

    .line 1807
    sget-object v4, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;->DEVICE_UNREGISTERED:Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    invoke-virtual {v3, v4}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->cancelTransfer(Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;)V

    .line 1803
    .end local v3    # "m":Lcom/sec/internal/ims/servicemodules/im/FtMessage;
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1809
    .end local v1    # "i":I
    :cond_3
    monitor-exit v0

    .line 1810
    return-void

    .line 1809
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public acceptSession(Z)V
    .locals 2
    .param p1, "explicit"    # Z

    .line 908
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const/16 v1, 0x3ee

    invoke-virtual {p0, v1, v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->sendMessage(Landroid/os/Message;)V

    .line 909
    return-void
.end method

.method protected acquireWakeLock(Ljava/lang/Object;)V
    .locals 3
    .param p1, "rawHandle"    # Ljava/lang/Object;

    .line 238
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "acquireWakeLock: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->logi(Ljava/lang/String;)V

    .line 239
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/16 v1, 0xbb8

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 240
    return-void
.end method

.method protected addImSessionInfo(Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingSessionEvent;Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo$ImSessionState;)Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo;
    .locals 10
    .param p1, "event"    # Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingSessionEvent;
    .param p2, "state"    # Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo$ImSessionState;

    .line 2069
    new-instance v9, Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo;

    iget-object v1, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingSessionEvent;->mRawHandle:Ljava/lang/Object;

    sget-object v3, Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;->INCOMING:Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    iget-object v4, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingSessionEvent;->mSessionUri:Lcom/sec/ims/util/ImsUri;

    iget-object v5, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingSessionEvent;->mContributionId:Ljava/lang/String;

    iget-object v6, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingSessionEvent;->mConversationId:Ljava/lang/String;

    iget-object v8, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingSessionEvent;->mSdpContentType:Ljava/lang/String;

    const/4 v7, 0x0

    move-object v0, v9

    move-object v2, p2

    invoke-direct/range {v0 .. v8}, Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo;-><init>(Ljava/lang/Object;Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo$ImSessionState;Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;Lcom/sec/ims/util/ImsUri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2071
    .local v0, "info":Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo;
    iget-boolean v1, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingSessionEvent;->mIsDeferred:Z

    if-eqz v1, :cond_1

    .line 2072
    iget-boolean v1, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingSessionEvent;->mIsForStoredNoti:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo$SessionType;->SNF_NOTIFICATION_SESSION:Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo$SessionType;

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo$SessionType;->SNF_SESSION:Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo$SessionType;

    :goto_0
    iput-object v1, v0, Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo;->mSessionType:Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo$SessionType;

    .line 2074
    :cond_1
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->addImSessionInfo(Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo;)V

    .line 2076
    return-object v0
.end method

.method protected addImSessionInfo(Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo;)V
    .locals 2
    .param p1, "info"    # Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo;

    .line 2085
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mImSessionInfoList:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 2086
    return-void
.end method

.method protected addInProgressRequestCallback(Landroid/os/Message;)V
    .locals 3
    .param p1, "cb"    # Landroid/os/Message;

    .line 2647
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addInProgressRequestCallback: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->logi(Ljava/lang/String;)V

    .line 2648
    const/16 v0, 0x7e1

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->removeMessages(I)V

    .line 2649
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v1, 0x1388

    invoke-virtual {p0, v0, v1, v2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->sendMessageDelayed(Landroid/os/Message;J)V

    .line 2651
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mInProgressRequestCallbacks:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2652
    return-void
.end method

.method protected addParticipant(Ljava/util/Collection;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;",
            ">;)V"
        }
    .end annotation

    .line 1115
    .local p1, "participants":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;>;"
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;

    .line 1116
    .local v1, "p":Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mParticipants:Ljava/util/HashMap;

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;->getUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1117
    .end local v1    # "p":Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;
    goto :goto_0

    .line 1118
    :cond_0
    return-void
.end method

.method protected addParticipants(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sec/ims/util/ImsUri;",
            ">;)V"
        }
    .end annotation

    .line 1025
    .local p1, "participants":Ljava/util/List;, "Ljava/util/List<Lcom/sec/ims/util/ImsUri;>;"
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->isGroupChat()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1026
    const/16 v0, 0x7d1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v1, p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->sendMessage(Landroid/os/Message;)V

    goto :goto_0

    .line 1029
    :cond_0
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->startSession()V

    .line 1030
    const/16 v0, 0x7d3

    invoke-virtual {p0, v0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->sendMessage(Landroid/os/Message;)V

    .line 1032
    :goto_0
    return-void
.end method

.method protected addToProcessingFileTransfer(Lcom/sec/internal/ims/servicemodules/im/FtMessage;)V
    .locals 1
    .param p1, "ftMsg"    # Lcom/sec/internal/ims/servicemodules/im/FtMessage;

    .line 2055
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mProcessingFileTransfer:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2056
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mProcessingFileTransfer:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2057
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->startFileTransferTimer()V

    .line 2059
    :cond_0
    return-void
.end method

.method protected attachFile(Lcom/sec/internal/ims/servicemodules/im/FtMessage;)V
    .locals 1
    .param p1, "msg"    # Lcom/sec/internal/ims/servicemodules/im/FtMessage;

    .line 1486
    const/16 v0, 0xbbc

    invoke-virtual {p0, v0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->sendMessage(Landroid/os/Message;)V

    .line 1487
    return-void
.end method

.method protected cancelInProgressMessages(ZLcom/sec/internal/constants/ims/servicemodules/im/ImError;)V
    .locals 3
    .param p1, "isFallback"    # Z
    .param p2, "error"    # Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    .line 1831
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mGetter:Lcom/sec/internal/ims/servicemodules/im/interfaces/IGetter;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mChatId:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/interfaces/IGetter;->getAllPendingMessages(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/im/MessageBase;

    .line 1832
    .local v1, "m":Lcom/sec/internal/ims/servicemodules/im/MessageBase;
    instance-of v2, v1, Lcom/sec/internal/ims/servicemodules/im/ImMessage;

    if-eqz v2, :cond_0

    .line 1833
    move-object v2, v1

    check-cast v2, Lcom/sec/internal/ims/servicemodules/im/ImMessage;

    invoke-direct {p0, v2, p1, p2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->cancelInProgressChatMsg(Lcom/sec/internal/ims/servicemodules/im/ImMessage;ZLcom/sec/internal/constants/ims/servicemodules/im/ImError;)V

    goto :goto_1

    .line 1834
    :cond_0
    instance-of v2, v1, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage;

    if-eqz v2, :cond_1

    .line 1835
    move-object v2, v1

    check-cast v2, Lcom/sec/internal/ims/servicemodules/im/FtMessage;

    invoke-direct {p0, v2, p1, p2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->cancelInProgressFTOutGoingMsg(Lcom/sec/internal/ims/servicemodules/im/FtMessage;ZLcom/sec/internal/constants/ims/servicemodules/im/ImError;)V

    goto :goto_1

    .line 1836
    :cond_1
    instance-of v2, v1, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage;

    if-eqz v2, :cond_2

    .line 1837
    move-object v2, v1

    check-cast v2, Lcom/sec/internal/ims/servicemodules/im/FtMessage;

    invoke-direct {p0, v2, p1, p2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->cancelInProgressFTInComingMsg(Lcom/sec/internal/ims/servicemodules/im/FtMessage;ZLcom/sec/internal/constants/ims/servicemodules/im/ImError;)V

    .line 1839
    .end local v1    # "m":Lcom/sec/internal/ims/servicemodules/im/MessageBase;
    :cond_2
    :goto_1
    goto :goto_0

    .line 1840
    :cond_3
    return-void
.end method

.method protected cancelPendingFilesInQueue()V
    .locals 5

    .line 1899
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mPendingFileTransfer:Ljava/util/ArrayList;

    monitor-enter v0

    .line 1904
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mPendingFileTransfer:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 1905
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mPendingFileTransfer:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/servicemodules/im/FtMessage;

    .line 1906
    .local v2, "m":Lcom/sec/internal/ims/servicemodules/im/FtMessage;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cancel pending file transfer : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->logi(Ljava/lang/String;)V

    .line 1907
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->setFtCompleteCallback(Landroid/os/Message;)V

    .line 1908
    sget-object v3, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;->DEVICE_UNREGISTERED:Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->cancelTransfer(Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;)V

    .line 1904
    .end local v2    # "m":Lcom/sec/internal/ims/servicemodules/im/FtMessage;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1910
    .end local v1    # "i":I
    :cond_0
    monitor-exit v0

    .line 1911
    return-void

    .line 1910
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected changeGroupAlias(Ljava/lang/String;)V
    .locals 1
    .param p1, "alias"    # Ljava/lang/String;

    .line 1068
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->isGroupChat()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1069
    const/16 v0, 0x7dc

    invoke-virtual {p0, v0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->sendMessage(Landroid/os/Message;)V

    .line 1071
    :cond_0
    return-void
.end method

.method protected changeGroupChatIcon(Ljava/lang/String;)V
    .locals 1
    .param p1, "icon_path"    # Ljava/lang/String;

    .line 1057
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->isGroupChat()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1058
    const/16 v0, 0x7de

    invoke-virtual {p0, v0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->sendMessage(Landroid/os/Message;)V

    .line 1060
    :cond_0
    return-void
.end method

.method protected changeGroupChatLeader(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sec/ims/util/ImsUri;",
            ">;)V"
        }
    .end annotation

    .line 1079
    .local p1, "participants":Ljava/util/List;, "Ljava/util/List<Lcom/sec/ims/util/ImsUri;>;"
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->isGroupChat()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1080
    const/16 v0, 0x7d8

    invoke-virtual {p0, v0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->sendMessage(Landroid/os/Message;)V

    .line 1082
    :cond_0
    return-void
.end method

.method protected changeGroupChatSubject(Ljava/lang/String;)V
    .locals 1
    .param p1, "subject"    # Ljava/lang/String;

    .line 1051
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->isGroupChat()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1052
    const/16 v0, 0x7da

    invoke-virtual {p0, v0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->sendMessage(Landroid/os/Message;)V

    .line 1054
    :cond_0
    return-void
.end method

.method protected checkAndUpdateSessionTimeout()V
    .locals 6

    .line 2027
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->isSessionTimeoutSupported()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2028
    const/16 v0, 0x3fa

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->removeMessages(I)V

    .line 2029
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mServiceId:Ljava/lang/String;

    const-string v2, "+g.3gpp.icsi-ref=\"urn%3Aurn-7%3A3gpp-service.ims.icsi.gsma.callcomposer\""

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    const-wide/16 v2, 0x3e8

    if-eqz v1, :cond_0

    .line 2032
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkAndUpdateSessionTimeout serviceId = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mServiceId:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mConfig:Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    invoke-virtual {v4}, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->getCallComposerTimerIdle()I

    move-result v4

    mul-int/lit16 v4, v4, 0x3e8

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->logi(Ljava/lang/String;)V

    .line 2033
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mConfig:Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->getCallComposerTimerIdle()I

    move-result v1

    if-lez v1, :cond_1

    .line 2034
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mConfig:Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->getCallComposerTimerIdle()I

    move-result v1

    int-to-long v4, v1

    mul-long/2addr v4, v2

    invoke-virtual {p0, v0, v4, v5}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->sendMessageDelayed(Landroid/os/Message;J)V

    goto :goto_0

    .line 2037
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkAndUpdateSessionTimeout "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mConfig:Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    invoke-virtual {v4}, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->getTimerIdle()I

    move-result v4

    mul-int/lit16 v4, v4, 0x3e8

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->logi(Ljava/lang/String;)V

    .line 2038
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mConfig:Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->getTimerIdle()I

    move-result v1

    int-to-long v4, v1

    mul-long/2addr v4, v2

    invoke-virtual {p0, v0, v4, v5}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->sendMessageDelayed(Landroid/os/Message;J)V

    .line 2041
    :cond_1
    :goto_0
    return-void
.end method

.method public closeSession()V
    .locals 2

    .line 992
    iget v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mPhoneId:I

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getRcsStrategy(I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->isGroupChat()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->getSessionStopReason(Z)Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionStopReason;

    move-result-object v0

    .line 993
    .local v0, "reason":Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionStopReason;
    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->closeSession(ZLcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionStopReason;)V

    .line 994
    return-void
.end method

.method protected closeSession(ZLcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionStopReason;)V
    .locals 2
    .param p1, "reuse"    # Z
    .param p2, "closeReason"    # Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionStopReason;

    .line 1003
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mChatData:Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;

    invoke-virtual {v0, p1}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->updateIsReusable(Z)V

    .line 1004
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mClosedState:Lcom/sec/internal/ims/servicemodules/im/ImSessionClosedState;

    iput-object p2, v0, Lcom/sec/internal/ims/servicemodules/im/ImSessionClosedState;->mStopReason:Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionStopReason;

    .line 1005
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionStopReason;->VOLUNTARILY:Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionStopReason;

    if-ne p2, v0, :cond_0

    .line 1006
    const/4 v0, 0x1

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;->CANCELED_BY_USER:Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->forceCancelFt(ZLcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;)V

    .line 1008
    :cond_0
    const/16 v0, 0x3f4

    invoke-virtual {p0, v0, p2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->sendMessage(Landroid/os/Message;)V

    .line 1009
    return-void
.end method

.method protected deleteParticipant(Ljava/util/Collection;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;",
            ">;)V"
        }
    .end annotation

    .line 1126
    .local p1, "participants":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;>;"
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;

    .line 1127
    .local v1, "p":Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mParticipants:Ljava/util/HashMap;

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;->getUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1128
    .end local v1    # "p":Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;
    goto :goto_0

    .line 1129
    :cond_0
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    .line 2333
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 2334
    return v0

    .line 2336
    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    .line 2337
    return v1

    .line 2339
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    .line 2340
    return v1

    .line 2342
    :cond_2
    move-object v2, p1

    check-cast v2, Lcom/sec/internal/ims/servicemodules/im/ImSession;

    .line 2343
    .local v2, "other":Lcom/sec/internal/ims/servicemodules/im/ImSession;
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mChatData:Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;

    if-nez v3, :cond_4

    .line 2344
    iget-object v3, v2, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mChatData:Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;

    if-nez v3, :cond_3

    goto :goto_0

    :cond_3
    move v0, v1

    :goto_0
    return v0

    .line 2346
    :cond_4
    iget-object v0, v2, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mChatData:Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;

    invoke-virtual {v3, v0}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected failCurrentMessages(Ljava/lang/Object;Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;)V
    .locals 1
    .param p1, "rawHandle"    # Ljava/lang/Object;
    .param p2, "result"    # Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;

    .line 1697
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->failCurrentMessages(Ljava/lang/Object;Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;Ljava/lang/String;)V

    .line 1698
    return-void
.end method

.method protected failCurrentMessages(Ljava/lang/Object;Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;Ljava/lang/String;)V
    .locals 5
    .param p1, "rawHandle"    # Ljava/lang/Object;
    .param p2, "result"    # Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;
    .param p3, "allowedMethods"    # Ljava/lang/String;

    .line 1701
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mCurrentMessages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/im/MessageBase;

    .line 1702
    .local v1, "message":Lcom/sec/internal/ims/servicemodules/im/MessageBase;
    const/16 v2, 0xbba

    invoke-virtual {p0, v2, v1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 1703
    .local v2, "callback":Landroid/os/Message;
    new-instance v3, Lcom/sec/internal/constants/ims/servicemodules/im/result/SendMessageResult;

    invoke-direct {v3, p1, p2, p3}, Lcom/sec/internal/constants/ims/servicemodules/im/result/SendMessageResult;-><init>(Ljava/lang/Object;Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;Ljava/lang/String;)V

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/sec/internal/helper/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Lcom/sec/internal/helper/AsyncResult;

    .line 1704
    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 1705
    .end local v1    # "message":Lcom/sec/internal/ims/servicemodules/im/MessageBase;
    .end local v2    # "callback":Landroid/os/Message;
    goto :goto_0

    .line 1706
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mCurrentMessages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1707
    return-void
.end method

.method protected findFtMessage(Ljava/lang/String;JLjava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/FtMessage;
    .locals 5
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "fileSize"    # J
    .param p4, "fileTransferId"    # Ljava/lang/String;

    .line 1736
    invoke-static {p1}, Lcom/sec/internal/helper/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1737
    invoke-static {p4}, Lcom/sec/internal/helper/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1739
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mGetter:Lcom/sec/internal/ims/servicemodules/im/interfaces/IGetter;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mChatId:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/interfaces/IGetter;->getAllPendingMessages(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/im/MessageBase;

    .line 1740
    .local v1, "m":Lcom/sec/internal/ims/servicemodules/im/MessageBase;
    instance-of v2, v1, Lcom/sec/internal/ims/servicemodules/im/FtMessage;

    if-eqz v2, :cond_0

    .line 1741
    move-object v2, v1

    check-cast v2, Lcom/sec/internal/ims/servicemodules/im/FtMessage;

    .line 1742
    .local v2, "ftMsg":Lcom/sec/internal/ims/servicemodules/im/FtMessage;
    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getFileName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getFileSize()J

    move-result-wide v3

    cmp-long v3, p2, v3

    if-nez v3, :cond_0

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getFileTransferId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1743
    return-object v2

    .line 1746
    .end local v1    # "m":Lcom/sec/internal/ims/servicemodules/im/MessageBase;
    .end local v2    # "ftMsg":Lcom/sec/internal/ims/servicemodules/im/FtMessage;
    :cond_0
    goto :goto_0

    .line 1747
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method protected forceCancelFt(ZLcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;)V
    .locals 2
    .param p1, "cancelPending"    # Z
    .param p2, "cancelReason"    # Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    .line 1820
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mClosedState:Lcom/sec/internal/ims/servicemodules/im/ImSessionClosedState;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lcom/sec/internal/ims/servicemodules/im/ImSessionClosedState;->forceCancelFt(ZLcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;Z)V

    .line 1821
    return-void
.end method

.method protected forceCloseSession()V
    .locals 1

    .line 1015
    const/16 v0, 0x3f7

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->sendMessage(Landroid/os/Message;)V

    .line 1016
    return-void
.end method

.method protected getChatData()Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;
    .locals 1

    .line 275
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mChatData:Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;

    return-object v0
.end method

.method public getChatId()Ljava/lang/String;
    .locals 1

    .line 284
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mChatId:Ljava/lang/String;

    return-object v0
.end method

.method public getChatMode()Lcom/sec/internal/constants/ims/servicemodules/im/ChatMode;
    .locals 1

    .line 440
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mChatData:Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->getChatMode()Lcom/sec/internal/constants/ims/servicemodules/im/ChatMode;

    move-result-object v0

    return-object v0
.end method

.method public getChatStateId()I
    .locals 1

    .line 338
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mChatData:Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->getState()Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$State;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$State;->getId()I

    move-result v0

    return v0
.end method

.method protected getChatType()Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;
    .locals 1

    .line 426
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mChatData:Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->getChatType()Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;

    move-result-object v0

    return-object v0
.end method

.method protected getComposingActiveUris()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/sec/ims/util/ImsUri;",
            ">;"
        }
    .end annotation

    .line 1148
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mComposingActiveUris:Ljava/util/Set;

    return-object v0
.end method

.method protected getContext()Landroid/content/Context;
    .locals 1

    .line 266
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mGetter:Lcom/sec/internal/ims/servicemodules/im/interfaces/IGetter;

    invoke-interface {v0}, Lcom/sec/internal/ims/servicemodules/im/interfaces/IGetter;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method protected getContributionId()Ljava/lang/String;
    .locals 1

    .line 539
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mChatData:Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->getContributionId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getConversationId()Ljava/lang/String;
    .locals 1

    .line 704
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mChatData:Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->getConversationId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getCurrentSessionState()Lcom/sec/internal/helper/IState;
    .locals 1

    .line 870
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getCurrentState()Lcom/sec/internal/helper/IState;

    move-result-object v0

    return-object v0
.end method

.method public getDetailedState()Lcom/sec/internal/ims/servicemodules/im/ImSession$SessionState;
    .locals 2

    .line 861
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mDetailedStateMap:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getCurrentState()Lcom/sec/internal/helper/IState;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/im/ImSession$SessionState;

    return-object v0
.end method

.method protected getDeviceId()Ljava/lang/String;
    .locals 1

    .line 502
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mDeviceId:Ljava/lang/String;

    return-object v0
.end method

.method public getDirection()Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;
    .locals 1

    .line 740
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mChatData:Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->getDirection()Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    move-result-object v0

    return-object v0
.end method

.method protected getFtCompleteCallback()Landroid/os/Message;
    .locals 1

    .line 2440
    const/16 v0, 0xbbe

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    return-object v0
.end method

.method protected getIconData()Lcom/sec/internal/constants/ims/servicemodules/im/ImIconData;
    .locals 1

    .line 466
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mChatData:Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->getIconData()Lcom/sec/internal/constants/ims/servicemodules/im/ImIconData;

    move-result-object v0

    return-object v0
.end method

.method public getId()I
    .locals 1

    .line 329
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mChatData:Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->getId()I

    move-result v0

    return v0
.end method

.method public getImSessionClosedEvent()Lcom/sec/internal/constants/ims/servicemodules/im/event/ImSessionClosedEvent;
    .locals 1

    .line 585
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mClosedEvent:Lcom/sec/internal/constants/ims/servicemodules/im/event/ImSessionClosedEvent;

    return-object v0
.end method

.method protected getImSessionInfo(Ljava/lang/Object;)Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo;
    .locals 3
    .param p1, "rawHandle"    # Ljava/lang/Object;

    .line 2125
    if-eqz p1, :cond_1

    .line 2126
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mImSessionInfoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo;

    .line 2127
    .local v1, "info":Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo;
    iget-object v2, v1, Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo;->mRawHandle:Ljava/lang/Object;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2128
    return-object v1

    .line 2130
    .end local v1    # "info":Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo;
    :cond_0
    goto :goto_0

    .line 2132
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getImSessionInfoByMessageId(I)Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo;
    .locals 4
    .param p1, "msgId"    # I

    .line 2220
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mImSessionInfoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo;

    .line 2221
    .local v1, "info":Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo;
    iget-object v2, v1, Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo;->mReceivedMessageIds:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2222
    return-object v1

    .line 2224
    .end local v1    # "info":Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo;
    :cond_0
    goto :goto_0

    .line 2225
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getInReplyToContributionId()Ljava/lang/String;
    .locals 1

    .line 722
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mInReplyToContributionId:Ljava/lang/String;

    return-object v0
.end method

.method protected getInitiator()Lcom/sec/ims/util/ImsUri;
    .locals 1

    .line 1097
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mInitiator:Lcom/sec/ims/util/ImsUri;

    return-object v0
.end method

.method protected getInitiatorAlias()Ljava/lang/String;
    .locals 1

    .line 475
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mInitiatorAlias:Ljava/lang/String;

    return-object v0
.end method

.method public getIsTokenUsed()Z
    .locals 1

    .line 489
    iget-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mIsTokenUsed:Z

    return v0
.end method

.method protected getLatestActiveImSessionInfo()Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo;
    .locals 4

    .line 2166
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mImSessionInfoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo;

    .line 2167
    .local v1, "info":Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo;
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo;->isSnFSession()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, v1, Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo;->mState:Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo$ImSessionState;

    sget-object v3, Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo$ImSessionState;->PENDING_INVITE:Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo$ImSessionState;

    if-eq v2, v3, :cond_0

    iget-object v2, v1, Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo;->mState:Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo$ImSessionState;

    sget-object v3, Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo$ImSessionState;->CLOSING:Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo$ImSessionState;

    if-eq v2, v3, :cond_0

    .line 2168
    return-object v1

    .line 2170
    .end local v1    # "info":Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo;
    :cond_0
    goto :goto_0

    .line 2171
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMaxParticipantsCount()I
    .locals 1

    .line 669
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mChatData:Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->getMaxParticipantsCount()I

    move-result v0

    return v0
.end method

.method protected getNeedToRevokeMessages()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 2496
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mNeedToRevokeMessages:Ljava/util/Map;

    return-object v0
.end method

.method public getOwnImsi()Ljava/lang/String;
    .locals 1

    .line 311
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mChatData:Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->getOwnIMSI()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getOwnPhoneNum()Ljava/lang/String;
    .locals 1

    .line 293
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mChatData:Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->getOwnPhoneNum()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getParticipant(Lcom/sec/ims/util/ImsUri;)Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;
    .locals 1
    .param p1, "uri"    # Lcom/sec/ims/util/ImsUri;

    .line 617
    if-eqz p1, :cond_0

    .line 618
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mParticipants:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;

    return-object v0

    .line 620
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getParticipants()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;",
            ">;"
        }
    .end annotation

    .line 594
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mParticipants:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method protected getParticipantsSize()I
    .locals 1

    .line 647
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mParticipants:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    return v0
.end method

.method public getParticipantsString()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 603
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 604
    .local v0, "ret":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mParticipants:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/ims/util/ImsUri;

    .line 605
    .local v2, "uri":Lcom/sec/ims/util/ImsUri;
    invoke-virtual {v2}, Lcom/sec/ims/util/ImsUri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 606
    .end local v2    # "uri":Lcom/sec/ims/util/ImsUri;
    goto :goto_0

    .line 607
    :cond_0
    return-object v0
.end method

.method protected getParticipantsUri()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/sec/ims/util/ImsUri;",
            ">;"
        }
    .end annotation

    .line 638
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mParticipants:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method protected getPhoneId()I
    .locals 3

    .line 375
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getSimSlotPriority()I

    move-result v0

    .line 376
    .local v0, "mDefaultPhoneId":I
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mChatData:Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->getOwnIMSI()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->getPhoneId(Ljava/lang/String;)I

    move-result v1

    .line 377
    .local v1, "phoneId":I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    return v2
.end method

.method protected getRawHandle()Ljava/lang/Object;
    .locals 1

    .line 2615
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mRawHandle:Ljava/lang/Object;

    return-object v0
.end method

.method protected getRcsStrategy(I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;
    .locals 1
    .param p1, "phoneId"    # I

    .line 2431
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mGetter:Lcom/sec/internal/ims/servicemodules/im/interfaces/IGetter;

    invoke-interface {v0, p1}, Lcom/sec/internal/ims/servicemodules/im/interfaces/IGetter;->getRcsStrategy(I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object v0

    return-object v0
.end method

.method public getRemoteUri()Lcom/sec/ims/util/ImsUri;
    .locals 2

    .line 656
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mParticipants:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 657
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mParticipants:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/ims/util/ImsUri;

    return-object v0

    .line 660
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getRequestMessageId()Ljava/lang/String;
    .locals 1

    .line 629
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mRequestMessageId:Ljava/lang/String;

    return-object v0
.end method

.method protected getSdpContentType()Ljava/lang/String;
    .locals 1

    .line 687
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mSdpContentType:Ljava/lang/String;

    return-object v0
.end method

.method public getServiceId()Ljava/lang/String;
    .locals 1

    .line 832
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mServiceId:Ljava/lang/String;

    return-object v0
.end method

.method protected getSessionUri()Lcom/sec/ims/util/ImsUri;
    .locals 1

    .line 567
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mChatData:Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->getSessionUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v0

    return-object v0
.end method

.method public getSubject()Ljava/lang/String;
    .locals 1

    .line 449
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mChatData:Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->getSubject()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getSubjectData()Lcom/sec/internal/constants/ims/servicemodules/im/ImSubjectData;
    .locals 1

    .line 462
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mChatData:Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->getSubjectData()Lcom/sec/internal/constants/ims/servicemodules/im/ImSubjectData;

    move-result-object v0

    return-object v0
.end method

.method protected getThreadId()I
    .locals 1

    .line 678
    iget v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mThreadId:I

    return v0
.end method

.method protected getUserAlias()Ljava/lang/String;
    .locals 2

    .line 520
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mConfig:Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->getUserAlias()Ljava/lang/String;

    move-result-object v0

    .line 521
    .local v0, "alias":Ljava/lang/String;
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getRcsStrategy()Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->dropUnsupportedCharacter(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, ""

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    return-object v1
.end method

.method protected handleAcceptSession(Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo;)V
    .locals 8
    .param p1, "info"    # Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo;

    .line 2094
    if-eqz p1, :cond_2

    .line 2095
    iget-object v0, p1, Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo;->mRawHandle:Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->acquireWakeLock(Ljava/lang/Object;)V

    .line 2097
    iget-object v0, p1, Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo;->mSessionType:Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo$SessionType;

    sget-object v1, Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo$SessionType;->NORMAL:Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo$SessionType;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2099
    .local v0, "isSnF":Z
    :goto_0
    sget-object v1, Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo$ImSessionState;->ACCEPTING:Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo$ImSessionState;

    iput-object v1, p1, Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo;->mState:Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo$ImSessionState;

    .line 2100
    new-instance v7, Lcom/sec/internal/constants/ims/servicemodules/im/params/AcceptImSessionParams;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mChatId:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getUserAlias()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p1, Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo;->mRawHandle:Ljava/lang/Object;

    .line 2101
    if-eqz v0, :cond_1

    const/16 v1, 0x3f3

    goto :goto_1

    :cond_1
    const/16 v1, 0x3ef

    :goto_1
    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    move-object v1, v7

    move v5, v0

    invoke-direct/range {v1 .. v6}, Lcom/sec/internal/constants/ims/servicemodules/im/params/AcceptImSessionParams;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLandroid/os/Message;)V

    .line 2102
    .local v1, "acceptParams":Lcom/sec/internal/constants/ims/servicemodules/im/params/AcceptImSessionParams;
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mImsService:Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;

    invoke-interface {v2, v1}, Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;->acceptImSession(Lcom/sec/internal/constants/ims/servicemodules/im/params/AcceptImSessionParams;)V

    .line 2104
    .end local v0    # "isSnF":Z
    .end local v1    # "acceptParams":Lcom/sec/internal/constants/ims/servicemodules/im/params/AcceptImSessionParams;
    :cond_2
    return-void
.end method

.method protected handleCloseAllSession(Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionStopReason;)V
    .locals 5
    .param p1, "closeReason"    # Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionStopReason;

    .line 2112
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mImSessionInfoList:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 2113
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo;

    .line 2114
    .local v2, "info":Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo;
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mClosedState:Lcom/sec/internal/ims/servicemodules/im/ImSessionClosedState;

    iget-object v4, v2, Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo;->mRawHandle:Ljava/lang/Object;

    invoke-virtual {v3, v4, p1}, Lcom/sec/internal/ims/servicemodules/im/ImSessionClosedState;->handleCloseSession(Ljava/lang/Object;Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionStopReason;)V

    .line 2115
    .end local v2    # "info":Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo;
    goto :goto_0

    .line 2116
    :cond_0
    return-void
.end method

.method protected handlePendingEvents()V
    .locals 2

    .line 2686
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handlePendingEvents: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mPendingEvents:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->logi(Ljava/lang/String;)V

    .line 2687
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mPendingEvents:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Message;

    .line 2688
    .local v1, "msg":Landroid/os/Message;
    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->sendMessage(Landroid/os/Message;)V

    .line 2689
    .end local v1    # "msg":Landroid/os/Message;
    goto :goto_0

    .line 2690
    :cond_0
    return-void
.end method

.method protected handleRequestTimeout()V
    .locals 4

    .line 2666
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleRequestTimeout: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mInProgressRequestCallbacks:Ljava/util/Set;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->logi(Ljava/lang/String;)V

    .line 2667
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mInProgressRequestCallbacks:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Message;

    .line 2668
    .local v1, "msg":Landroid/os/Message;
    iget v2, v1, Landroid/os/Message;->what:I

    const/16 v3, 0x7d9

    if-eq v2, v3, :cond_0

    .line 2675
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleRequestTimeout: Unexpected event "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->logi(Ljava/lang/String;)V

    goto :goto_1

    .line 2670
    :cond_0
    iget-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/util/List;

    .line 2671
    .local v2, "leader":Ljava/util/List;, "Ljava/util/List<Lcom/sec/ims/util/ImsUri;>;"
    sget-object v3, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImErrorReason;->ENGINE_ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImErrorReason;

    invoke-virtual {p0, v2, v3}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->onChangeGroupChatLeaderFailed(Ljava/util/List;Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImErrorReason;)V

    .line 2672
    nop

    .line 2678
    .end local v1    # "msg":Landroid/os/Message;
    .end local v2    # "leader":Ljava/util/List;, "Ljava/util/List<Lcom/sec/ims/util/ImsUri;>;"
    :goto_1
    goto :goto_0

    .line 2680
    :cond_1
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mInProgressRequestCallbacks:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 2682
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->handlePendingEvents()V

    .line 2683
    return-void
.end method

.method protected handleSendingStateRevokeMessages()V
    .locals 1

    .line 2568
    const/16 v0, 0xbcc

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->sendMessage(I)V

    .line 2569
    return-void
.end method

.method protected handleUploadedFileFallback(Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage;)V
    .locals 3
    .param p1, "msg"    # Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage;

    .line 2592
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImSession$1;->$SwitchMap$com$sec$internal$ims$servicemodules$im$strategy$IMnoStrategy$StatusCode:[I

    iget v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mPhoneId:I

    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getRcsStrategy(I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->getUploadedFileFallbackSLMTech()Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;->getStatusCode()Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 2600
    :cond_0
    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->REMOTE_TEMPORARILY_UNAVAILABLE:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;->NONE:Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;

    invoke-direct {v0, v1, v2}, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;-><init>(Lcom/sec/internal/constants/ims/servicemodules/im/ImError;Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;)V

    new-instance v1, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;

    sget-object v2, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;->FALLBACK_TO_LEGACY:Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;

    invoke-direct {v1, v2}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;-><init>(Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;)V

    invoke-virtual {p1, v0, v1}, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage;->onSendMessageDone(Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;)V

    goto :goto_0

    .line 2597
    :cond_1
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage;->attachSlmFile()V

    .line 2598
    goto :goto_0

    .line 2594
    :cond_2
    const/16 v0, 0xbbf

    invoke-virtual {p0, v0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->sendMessage(Landroid/os/Message;)V

    .line 2595
    nop

    .line 2604
    :goto_0
    return-void
.end method

.method protected hasActiveImSessionInfo()Z
    .locals 1

    .line 2180
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getLatestActiveImSessionInfo()Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasImSessionInfo(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "rawHandle"    # Ljava/lang/Object;

    .line 823
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getImSessionInfo(Ljava/lang/Object;)Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 4

    .line 2319
    const/16 v0, 0x1f

    .line 2320
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 2321
    .local v1, "result":I
    mul-int v2, v0, v1

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mChatData:Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;

    if-nez v3, :cond_0

    const/4 v3, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v3}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->hashCode()I

    move-result v3

    :goto_0
    add-int/2addr v2, v3

    .line 2322
    .end local v1    # "result":I
    .local v2, "result":I
    return v2
.end method

.method protected isAutoAccept()Z
    .locals 2

    .line 2377
    iget v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mPhoneId:I

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getRcsStrategy(I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mPhoneId:I

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getRcsStrategy(I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object v0

    const-string v1, "force_auto_accept"

    invoke-interface {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->boolSetting(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2378
    const/4 v0, 0x1

    return v0

    .line 2381
    :cond_0
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->isGroupChat()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2382
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mConfig:Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->isAutAcceptGroupChat()Z

    move-result v0

    return v0

    .line 2384
    :cond_1
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mConfig:Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->isAutAccept()Z

    move-result v0

    return v0
.end method

.method protected isAutoRejoinSession()Z
    .locals 3

    .line 1505
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->isRejoinable()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mPhoneId:I

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getRcsStrategy(I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object v0

    const-string v2, "groupchat_auto_rejoin"

    invoke-interface {v0, v2}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->boolSetting(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$State;->ACTIVE:Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$State;

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->isChatState(Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$State;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$State;->CLOSED_INVOLUNTARILY:Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$State;

    .line 1506
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->isChatState(Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$State;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1507
    :cond_0
    return v1

    .line 1509
    :cond_1
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->isRejoinable()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$State;->CLOSED_VOLUNTARILY:Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$State;

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->isChatState(Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$State;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mPhoneId:I

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getRcsStrategy(I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object v0

    const-string/jumbo v2, "support_auto_rejoin_for_bye"

    invoke-interface {v0, v2}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->boolSetting(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method protected isBotSessionAnonymized()Z
    .locals 1

    .line 390
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mConfig:Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->getBotPrivacyDisable()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->isChatbotRole()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getIsTokenUsed()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected isBroadcastMsg(Lcom/sec/internal/ims/servicemodules/im/MessageBase;)Z
    .locals 2
    .param p1, "msg"    # Lcom/sec/internal/ims/servicemodules/im/MessageBase;

    .line 558
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mChatData:Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->getChatType()Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;

    move-result-object v0

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;->ONE_TO_MANY_CHAT:Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;

    if-eq v0, v1, :cond_1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->isBroadcastMsg()Z

    move-result v0

    if-eqz v0, :cond_0

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

.method protected isChatState(Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$State;)Z
    .locals 2
    .param p1, "state"    # Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$State;

    .line 357
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatStateId()I

    move-result v0

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$State;->getId()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected isChatbotManualAcceptUsed()Z
    .locals 2

    .line 399
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->isChatbotRole()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getPhoneId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getRcsStrategy(I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object v0

    const-string/jumbo v1, "use_chatbot_manualaccept"

    invoke-interface {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->boolSetting(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mInitiator:Lcom/sec/ims/util/ImsUri;

    if-eqz v0, :cond_0

    .line 400
    invoke-virtual {v0}, Lcom/sec/ims/util/ImsUri;->getUriType()Lcom/sec/ims/util/ImsUri$UriType;

    move-result-object v0

    sget-object v1, Lcom/sec/ims/util/ImsUri$UriType;->SIP_URI:Lcom/sec/ims/util/ImsUri$UriType;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 399
    :goto_0
    return v0
.end method

.method protected isChatbotRole()Z
    .locals 1

    .line 386
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mChatData:Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->isChatbotRole()Z

    move-result v0

    return v0
.end method

.method protected isEmptySession()Z
    .locals 1

    .line 2403
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$State;->NONE:Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$State;

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->isChatState(Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$State;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo$ImSessionState;->PENDING_INVITE:Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo$ImSessionState;

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->hasImSessionInfo(Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo$ImSessionState;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected isEstablishedState()Z
    .locals 2

    .line 2394
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getCurrentState()Lcom/sec/internal/helper/IState;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mEstablishedState:Lcom/sec/internal/ims/servicemodules/im/ImSessionEstablishedState;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected isFirstMessageInStart(Ljava/lang/String;)Z
    .locals 2
    .param p1, "body"    # Ljava/lang/String;

    .line 2009
    iget v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mPhoneId:I

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getRcsStrategy(I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mConfig:Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->isFirstMsgInvite()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->isFirstMsgInvite(Z)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->isGroupChat()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mPhoneId:I

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getRcsStrategy(I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object v0

    const-string v1, "firstmsg_groupchat_invite"

    invoke-interface {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->boolSetting(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mPhoneId:I

    .line 2010
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getRcsStrategy(I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object v0

    const-string/jumbo v1, "use_msrp"

    invoke-interface {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->boolSetting(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 2009
    :goto_0
    return v0
.end method

.method public isGroupChat()Z
    .locals 1

    .line 366
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mChatData:Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->isGroupChat()Z

    move-result v0

    return v0
.end method

.method protected isMsgFallbackSupported()Z
    .locals 2

    .line 2465
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mChatFallbackMech:Lcom/sec/internal/ims/servicemodules/im/ImSession$ChatFallbackMech;

    sget-object v1, Lcom/sec/internal/ims/servicemodules/im/ImSession$ChatFallbackMech;->NETWORK_INTERWORKING:Lcom/sec/internal/ims/servicemodules/im/ImSession$ChatFallbackMech;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected isMsgRevocationSupported()Z
    .locals 2

    .line 2469
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mChatFallbackMech:Lcom/sec/internal/ims/servicemodules/im/ImSession$ChatFallbackMech;

    sget-object v1, Lcom/sec/internal/ims/servicemodules/im/ImSession$ChatFallbackMech;->MESSAGE_REVOCATION:Lcom/sec/internal/ims/servicemodules/im/ImSession$ChatFallbackMech;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected isMuted()Z
    .locals 1

    .line 530
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mChatData:Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->isMuted()Z

    move-result v0

    return v0
.end method

.method protected isRejoinable()Z
    .locals 1

    .line 813
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->isGroupChat()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getSessionUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected isReusable()Z
    .locals 1

    .line 804
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mChatData:Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->isReusable()Z

    move-result v0

    return v0
.end method

.method public isTimerExpired()Z
    .locals 1

    .line 2473
    iget-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mIsTimerExpired:Z

    return v0
.end method

.method protected isVoluntaryDeparture()Z
    .locals 1

    .line 2412
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->isGroupChat()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$State;->CLOSED_VOLUNTARILY:Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$State;

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->isChatState(Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$State;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected leaveSessionWithReject(Ljava/lang/Object;)V
    .locals 5
    .param p1, "rawHandle"    # Ljava/lang/Object;

    .line 2693
    const v0, 0x40000100    # 2.000061f

    const-string v1, "User left"

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 2694
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mImsService:Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;

    new-instance v1, Lcom/sec/internal/constants/ims/servicemodules/im/params/RejectImSessionParams;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mChatId:Ljava/lang/String;

    sget-object v3, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionRejectReason;->VOLUNTARILY:Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionRejectReason;

    const/4 v4, 0x0

    invoke-direct {v1, v2, p1, v3, v4}, Lcom/sec/internal/constants/ims/servicemodules/im/params/RejectImSessionParams;-><init>(Ljava/lang/String;Ljava/lang/Object;Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionRejectReason;Landroid/os/Message;)V

    invoke-interface {v0, v1}, Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;->rejectImSession(Lcom/sec/internal/constants/ims/servicemodules/im/params/RejectImSessionParams;)V

    .line 2696
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionClosedReason;->CLOSED_BY_LOCAL:Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionClosedReason;

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mClosedReason:Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionClosedReason;

    .line 2697
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionStopReason;->VOLUNTARILY:Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionStopReason;

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->handleCloseAllSession(Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionStopReason;)V

    .line 2698
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$State;->NONE:Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$State;

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->updateChatState(Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$State;)V

    .line 2699
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mListener:Lcom/sec/internal/ims/servicemodules/im/listener/ImSessionListener;

    invoke-interface {v0, p0}, Lcom/sec/internal/ims/servicemodules/im/listener/ImSessionListener;->onChatDeparted(Lcom/sec/internal/ims/servicemodules/im/ImSession;)V

    .line 2700
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->transitionToProperState()V

    .line 2701
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->releaseWakeLock(Ljava/lang/Object;)V

    .line 2702
    return-void
.end method

.method protected messageRevocationRequest(Ljava/util/List;ZI)V
    .locals 6
    .param p2, "userSelectResult"    # Z
    .param p3, "userSelectType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;ZI)V"
        }
    .end annotation

    .line 2511
    .local p1, "imdnIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2514
    .local v0, "messages":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/sec/internal/ims/servicemodules/im/MessageBase;>;"
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "messageRevocationRequest() : imdnIds : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " userSelectResult : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " userSelectType : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->logi(Ljava/lang/String;)V

    .line 2517
    if-eqz p2, :cond_7

    .line 2518
    const/4 v1, 0x1

    if-eq p3, v1, :cond_2

    const/4 v1, 0x2

    if-eq p3, v1, :cond_0

    goto :goto_2

    .line 2530
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 2531
    .local v2, "imdnId":Ljava/lang/String;
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mGetter:Lcom/sec/internal/ims/servicemodules/im/interfaces/IGetter;

    sget-object v4, Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;->OUTGOING:Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    invoke-interface {v3, v2, v4}, Lcom/sec/internal/ims/servicemodules/im/interfaces/IGetter;->getMessage(Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;)Lcom/sec/internal/ims/servicemodules/im/MessageBase;

    move-result-object v3

    .line 2532
    .local v3, "msg":Lcom/sec/internal/ims/servicemodules/im/MessageBase;
    instance-of v4, v3, Lcom/sec/internal/ims/servicemodules/im/FtMessage;

    if-nez v4, :cond_1

    .line 2533
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getRevocationStatus()Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$RevocationStatus;

    move-result-object v4

    sget-object v5, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$RevocationStatus;->PENDING:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$RevocationStatus;

    if-ne v4, v5, :cond_1

    .line 2534
    invoke-interface {v0, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 2537
    .end local v2    # "imdnId":Ljava/lang/String;
    :cond_1
    goto :goto_0

    .line 2520
    .end local v3    # "msg":Lcom/sec/internal/ims/servicemodules/im/MessageBase;
    :cond_2
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 2521
    .restart local v2    # "imdnId":Ljava/lang/String;
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mGetter:Lcom/sec/internal/ims/servicemodules/im/interfaces/IGetter;

    sget-object v4, Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;->OUTGOING:Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    invoke-interface {v3, v2, v4}, Lcom/sec/internal/ims/servicemodules/im/interfaces/IGetter;->getMessage(Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;)Lcom/sec/internal/ims/servicemodules/im/MessageBase;

    move-result-object v3

    .line 2522
    .restart local v3    # "msg":Lcom/sec/internal/ims/servicemodules/im/MessageBase;
    instance-of v4, v3, Lcom/sec/internal/ims/servicemodules/im/ImMessage;

    if-nez v4, :cond_3

    .line 2523
    if-eqz v3, :cond_3

    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getRevocationStatus()Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$RevocationStatus;

    move-result-object v4

    sget-object v5, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$RevocationStatus;->PENDING:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$RevocationStatus;

    if-ne v4, v5, :cond_3

    .line 2524
    invoke-interface {v0, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 2527
    .end local v2    # "imdnId":Ljava/lang/String;
    :cond_3
    goto :goto_1

    .line 2528
    .end local v3    # "msg":Lcom/sec/internal/ims/servicemodules/im/MessageBase;
    :cond_4
    nop

    .line 2540
    :cond_5
    :goto_2
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_6

    .line 2541
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mListener:Lcom/sec/internal/ims/servicemodules/im/listener/ImSessionListener;

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$RevocationStatus;->FAILED:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$RevocationStatus;

    invoke-interface {v1, v2, v0, p0}, Lcom/sec/internal/ims/servicemodules/im/listener/ImSessionListener;->onMessageRevocationDone(Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$RevocationStatus;Ljava/util/Collection;Lcom/sec/internal/ims/servicemodules/im/ImSession;)V

    .line 2543
    :cond_6
    const/16 v1, 0xbc8

    invoke-virtual {p0, v1, p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->sendMessage(Landroid/os/Message;)V

    goto :goto_4

    .line 2545
    :cond_7
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 2546
    .restart local v2    # "imdnId":Ljava/lang/String;
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mGetter:Lcom/sec/internal/ims/servicemodules/im/interfaces/IGetter;

    sget-object v4, Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;->OUTGOING:Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    invoke-interface {v3, v2, v4}, Lcom/sec/internal/ims/servicemodules/im/interfaces/IGetter;->getMessage(Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;)Lcom/sec/internal/ims/servicemodules/im/MessageBase;

    move-result-object v3

    .line 2547
    .restart local v3    # "msg":Lcom/sec/internal/ims/servicemodules/im/MessageBase;
    if-eqz v3, :cond_8

    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getRevocationStatus()Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$RevocationStatus;

    move-result-object v4

    sget-object v5, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$RevocationStatus;->PENDING:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$RevocationStatus;

    if-ne v4, v5, :cond_8

    .line 2548
    invoke-interface {v0, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 2550
    .end local v2    # "imdnId":Ljava/lang/String;
    :cond_8
    goto :goto_3

    .line 2551
    .end local v3    # "msg":Lcom/sec/internal/ims/servicemodules/im/MessageBase;
    :cond_9
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_a

    .line 2552
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mListener:Lcom/sec/internal/ims/servicemodules/im/listener/ImSessionListener;

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$RevocationStatus;->FAILED:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$RevocationStatus;

    invoke-interface {v1, v2, v0, p0}, Lcom/sec/internal/ims/servicemodules/im/listener/ImSessionListener;->onMessageRevocationDone(Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$RevocationStatus;Ljava/util/Collection;Lcom/sec/internal/ims/servicemodules/im/ImSession;)V

    .line 2555
    :cond_a
    :goto_4
    return-void
.end method

.method protected messageRevocationRequestAll(ZI)V
    .locals 2
    .param p1, "userSelectResult"    # Z
    .param p2, "userSelectType"    # I

    .line 2506
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mNeedToRevokeMessages:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 2507
    .local v0, "imdnIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0, v0, p1, p2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->messageRevocationRequest(Ljava/util/List;ZI)V

    .line 2508
    return-void
.end method

.method protected needToUseGroupChatInvitationUI()Z
    .locals 3

    .line 2364
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->isGroupChat()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mGetter:Lcom/sec/internal/ims/servicemodules/im/interfaces/IGetter;

    iget v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mPhoneId:I

    invoke-interface {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/interfaces/IGetter;->getRcsStrategy(I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object v0

    const-string v1, "groupchat_invitationui_used"

    invoke-interface {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->boolSetting(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mConfig:Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    .line 2365
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->isAutAcceptGroupChat()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2367
    .local v0, "ret":Z
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "needToUseGroupChatInvitationUI, ChatState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mChatData:Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;

    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->getState()Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$State;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", ret="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->logi(Ljava/lang/String;)V

    .line 2368
    return v0
.end method

.method protected onAddParticipantsFailed(Ljava/util/List;Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImErrorReason;)V
    .locals 2
    .param p2, "reason"    # Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImErrorReason;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sec/ims/util/ImsUri;",
            ">;",
            "Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImErrorReason;",
            ")V"
        }
    .end annotation

    .line 1619
    .local p1, "participants":Ljava/util/List;, "Ljava/util/List<Lcom/sec/ims/util/ImsUri;>;"
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mListener:Lcom/sec/internal/ims/servicemodules/im/listener/ImSessionListener;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mChatId:Ljava/lang/String;

    invoke-interface {v0, v1, p1, p2}, Lcom/sec/internal/ims/servicemodules/im/listener/ImSessionListener;->onAddParticipantsFailed(Ljava/lang/String;Ljava/util/List;Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImErrorReason;)V

    .line 1620
    return-void
.end method

.method protected onAddParticipantsSucceeded(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sec/ims/util/ImsUri;",
            ">;)V"
        }
    .end annotation

    .line 1592
    .local p1, "participants":Ljava/util/List;, "Ljava/util/List<Lcom/sec/ims/util/ImsUri;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1593
    .local v0, "insertedParticipants":Ljava/util/List;, "Ljava/util/List<Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/ims/util/ImsUri;

    .line 1594
    .local v2, "uri":Lcom/sec/ims/util/ImsUri;
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mGetter:Lcom/sec/internal/ims/servicemodules/im/interfaces/IGetter;

    invoke-interface {v3, v2}, Lcom/sec/internal/ims/servicemodules/im/interfaces/IGetter;->normalizeUri(Lcom/sec/ims/util/ImsUri;)Lcom/sec/ims/util/ImsUri;

    move-result-object v3

    .line 1595
    .local v3, "normalizedUri":Lcom/sec/ims/util/ImsUri;
    if-eqz v3, :cond_0

    .line 1596
    invoke-virtual {p0, v3}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getParticipant(Lcom/sec/ims/util/ImsUri;)Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;

    move-result-object v4

    .line 1597
    .local v4, "p":Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;
    if-nez v4, :cond_0

    .line 1598
    new-instance v5, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;

    iget-object v6, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mChatId:Ljava/lang/String;

    sget-object v7, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;->INVITED:Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;

    invoke-direct {v5, v6, v7, v3}, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;-><init>(Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;Lcom/sec/ims/util/ImsUri;)V

    move-object v4, v5

    .line 1599
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1602
    .end local v2    # "uri":Lcom/sec/ims/util/ImsUri;
    .end local v3    # "normalizedUri":Lcom/sec/ims/util/ImsUri;
    .end local v4    # "p":Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;
    :cond_0
    goto :goto_0

    .line 1603
    :cond_1
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->isGroupChat()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getParticipantsSize()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_2

    .line 1604
    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;->REGULAR_GROUP_CHAT:Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;

    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->updateChatType(Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;)V

    .line 1606
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 1607
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mListener:Lcom/sec/internal/ims/servicemodules/im/listener/ImSessionListener;

    invoke-interface {v1, p0, v0}, Lcom/sec/internal/ims/servicemodules/im/listener/ImSessionListener;->onParticipantsInserted(Lcom/sec/internal/ims/servicemodules/im/ImSession;Ljava/util/Collection;)V

    .line 1609
    :cond_3
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mListener:Lcom/sec/internal/ims/servicemodules/im/listener/ImSessionListener;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mChatId:Ljava/lang/String;

    invoke-interface {v1, v2, p1}, Lcom/sec/internal/ims/servicemodules/im/listener/ImSessionListener;->onAddParticipantsSucceeded(Ljava/lang/String;Ljava/util/List;)V

    .line 1610
    return-void
.end method

.method protected onChangeGroupAliasFailed(Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImErrorReason;)V
    .locals 2
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "reason"    # Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImErrorReason;

    .line 1662
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mListener:Lcom/sec/internal/ims/servicemodules/im/listener/ImSessionListener;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mChatId:Ljava/lang/String;

    invoke-interface {v0, v1, p1, p2}, Lcom/sec/internal/ims/servicemodules/im/listener/ImSessionListener;->onChangeGroupAliasFailed(Ljava/lang/String;Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImErrorReason;)V

    .line 1663
    return-void
.end method

.method protected onChangeGroupChatIconFailed(Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImErrorReason;)V
    .locals 2
    .param p1, "icon_path"    # Ljava/lang/String;
    .param p2, "reason"    # Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImErrorReason;

    .line 1652
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mListener:Lcom/sec/internal/ims/servicemodules/im/listener/ImSessionListener;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mChatId:Ljava/lang/String;

    invoke-interface {v0, v1, p1, p2}, Lcom/sec/internal/ims/servicemodules/im/listener/ImSessionListener;->onChangeGroupChatIconFailed(Ljava/lang/String;Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImErrorReason;)V

    .line 1653
    return-void
.end method

.method protected onChangeGroupChatLeaderFailed(Ljava/util/List;Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImErrorReason;)V
    .locals 2
    .param p2, "reason"    # Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImErrorReason;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sec/ims/util/ImsUri;",
            ">;",
            "Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImErrorReason;",
            ")V"
        }
    .end annotation

    .line 1638
    .local p1, "participants":Ljava/util/List;, "Ljava/util/List<Lcom/sec/ims/util/ImsUri;>;"
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mListener:Lcom/sec/internal/ims/servicemodules/im/listener/ImSessionListener;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mChatId:Ljava/lang/String;

    invoke-interface {v0, v1, p1, p2}, Lcom/sec/internal/ims/servicemodules/im/listener/ImSessionListener;->onChangeGroupChatLeaderFailed(Ljava/lang/String;Ljava/util/List;Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImErrorReason;)V

    .line 1639
    return-void
.end method

.method protected onChangeGroupChatSubjectFailed(Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImErrorReason;)V
    .locals 2
    .param p1, "subject"    # Ljava/lang/String;
    .param p2, "reason"    # Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImErrorReason;

    .line 1648
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mListener:Lcom/sec/internal/ims/servicemodules/im/listener/ImSessionListener;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mChatId:Ljava/lang/String;

    invoke-interface {v0, v1, p1, p2}, Lcom/sec/internal/ims/servicemodules/im/listener/ImSessionListener;->onChangeGroupChatSubjectFailed(Ljava/lang/String;Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImErrorReason;)V

    .line 1649
    return-void
.end method

.method protected onConferenceInfoUpdated(Lcom/sec/internal/constants/ims/servicemodules/im/event/ImSessionConferenceInfoUpdateEvent;)V
    .locals 10
    .param p1, "event"    # Lcom/sec/internal/constants/ims/servicemodules/im/event/ImSessionConferenceInfoUpdateEvent;

    .line 1672
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mConferenceInfoUpdater:Lcom/sec/internal/ims/servicemodules/im/ConferenceInfoUpdater;

    if-nez v0, :cond_0

    .line 1673
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mUriGenerator:Lcom/sec/internal/ims/util/UriGenerator;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getOwnPhoneNum()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/ims/util/UriGenerator;->getNormalizedUri(Ljava/lang/String;Z)Lcom/sec/ims/util/ImsUri;

    move-result-object v0

    .line 1674
    .local v0, "ownUri":Lcom/sec/ims/util/ImsUri;
    new-instance v1, Lcom/sec/internal/ims/servicemodules/im/ConferenceInfoUpdater;

    iget v5, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mPhoneId:I

    invoke-virtual {p0, v5}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getRcsStrategy(I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object v7

    iget-object v8, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mUriGenerator:Lcom/sec/internal/ims/util/UriGenerator;

    iget-object v9, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mListener:Lcom/sec/internal/ims/servicemodules/im/listener/ImSessionListener;

    move-object v3, v1

    move-object v4, p0

    move-object v6, v0

    invoke-direct/range {v3 .. v9}, Lcom/sec/internal/ims/servicemodules/im/ConferenceInfoUpdater;-><init>(Lcom/sec/internal/ims/servicemodules/im/ImSession;ILcom/sec/ims/util/ImsUri;Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;Lcom/sec/internal/ims/util/UriGenerator;Lcom/sec/internal/ims/servicemodules/im/listener/ImSessionListener;)V

    iput-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mConferenceInfoUpdater:Lcom/sec/internal/ims/servicemodules/im/ConferenceInfoUpdater;

    .line 1677
    .end local v0    # "ownUri":Lcom/sec/ims/util/ImsUri;
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mConferenceInfoUpdater:Lcom/sec/internal/ims/servicemodules/im/ConferenceInfoUpdater;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mLeaderParticipant:Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Lcom/sec/internal/ims/servicemodules/im/ConferenceInfoUpdater;->onConferenceInfoUpdated(Lcom/sec/internal/constants/ims/servicemodules/im/event/ImSessionConferenceInfoUpdateEvent;Ljava/lang/String;)V

    .line 1678
    return-void
.end method

.method protected onEstablishmentTimeOut(Ljava/lang/Object;)V
    .locals 4
    .param p1, "rawHandle"    # Ljava/lang/Object;

    .line 2607
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getImSessionInfo(Ljava/lang/Object;)Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo;

    move-result-object v0

    .line 2608
    .local v0, "info":Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SESSION_ESTABLISHMENT_TIMEOUT : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->logi(Ljava/lang/String;)V

    .line 2609
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo;->mState:Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo$ImSessionState;

    sget-object v2, Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo$ImSessionState;->ESTABLISHED:Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo$ImSessionState;

    if-eq v1, v2, :cond_0

    .line 2610
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mClosedState:Lcom/sec/internal/ims/servicemodules/im/ImSessionClosedState;

    iget-object v2, v0, Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo;->mRawHandle:Ljava/lang/Object;

    sget-object v3, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionStopReason;->NO_RESPONSE:Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionStopReason;

    invoke-virtual {v1, v2, v3}, Lcom/sec/internal/ims/servicemodules/im/ImSessionClosedState;->handleCloseSession(Ljava/lang/Object;Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionStopReason;)V

    .line 2612
    :cond_0
    return-void
.end method

.method protected onIncomingSessionProcessed(Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingMessageEvent;Z)V
    .locals 1
    .param p1, "msgEvent"    # Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingMessageEvent;
    .param p2, "notify"    # Z

    .line 1687
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mListener:Lcom/sec/internal/ims/servicemodules/im/listener/ImSessionListener;

    invoke-interface {v0, p1, p0, p2}, Lcom/sec/internal/ims/servicemodules/im/listener/ImSessionListener;->onIncomingSessionProcessed(Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingMessageEvent;Lcom/sec/internal/ims/servicemodules/im/ImSession;Z)V

    .line 1688
    return-void
.end method

.method protected onMessageSending(Lcom/sec/internal/ims/servicemodules/im/MessageBase;)V
    .locals 2
    .param p1, "msg"    # Lcom/sec/internal/ims/servicemodules/im/MessageBase;

    .line 1520
    const-string v0, "msg cannot be null"

    invoke-static {p1, v0}, Lcom/sec/internal/helper/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1522
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getStatus()Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;

    move-result-object v0

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;->SENDING:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getStatus()Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;

    move-result-object v0

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;->SENT:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;

    if-eq v0, v1, :cond_0

    .line 1523
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;->SENDING:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;

    invoke-virtual {p1, v0}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->updateStatus(Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;)V

    .line 1526
    :cond_0
    iget-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mIsComposing:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->isBroadcastMsg(Lcom/sec/internal/ims/servicemodules/im/MessageBase;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1527
    const/16 v0, 0xbcd

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->sendMessage(Landroid/os/Message;)V

    goto :goto_0

    .line 1529
    :cond_1
    iput-boolean v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mIsComposing:Z

    .line 1530
    const/16 v0, 0xbce

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->removeMessages(I)V

    .line 1531
    const/16 v0, 0xbcf

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->removeMessages(I)V

    .line 1533
    :goto_0
    return-void
.end method

.method protected onRemoveParticipantsFailed(Ljava/util/List;Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImErrorReason;)V
    .locals 2
    .param p2, "reason"    # Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImErrorReason;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sec/ims/util/ImsUri;",
            ">;",
            "Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImErrorReason;",
            ")V"
        }
    .end annotation

    .line 1629
    .local p1, "participants":Ljava/util/List;, "Ljava/util/List<Lcom/sec/ims/util/ImsUri;>;"
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mListener:Lcom/sec/internal/ims/servicemodules/im/listener/ImSessionListener;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mChatId:Ljava/lang/String;

    invoke-interface {v0, v1, p1, p2}, Lcom/sec/internal/ims/servicemodules/im/listener/ImSessionListener;->onRemoveParticipantsFailed(Ljava/lang/String;Ljava/util/List;Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImErrorReason;)V

    .line 1630
    return-void
.end method

.method protected onSendDisplayedNotification(Ljava/util/List;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sec/internal/ims/servicemodules/im/MessageBase;",
            ">;)V"
        }
    .end annotation

    .line 2572
    .local p1, "l":Ljava/util/List;, "Ljava/util/List<Lcom/sec/internal/ims/servicemodules/im/MessageBase;>;"
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onSendDisplayedNotification : messages = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 2574
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/im/MessageBase;

    .line 2575
    .local v1, "message":Lcom/sec/internal/ims/servicemodules/im/MessageBase;
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getId()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getImSessionInfoByMessageId(I)Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo;

    move-result-object v10

    .line 2576
    .local v10, "info":Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo;
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mRawHandle:Ljava/lang/Object;

    .line 2577
    .local v2, "rawHandle":Ljava/lang/Object;
    if-eqz v10, :cond_0

    invoke-virtual {v10}, Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo;->isSnFSession()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, v10, Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo;->mState:Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo$ImSessionState;

    sget-object v4, Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo$ImSessionState;->ESTABLISHED:Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo$ImSessionState;

    if-ne v3, v4, :cond_0

    .line 2579
    iget-object v2, v10, Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo;->mRawHandle:Ljava/lang/Object;

    move-object v11, v2

    goto :goto_1

    .line 2581
    :cond_0
    move-object v11, v2

    .end local v2    # "rawHandle":Ljava/lang/Object;
    .local v11, "rawHandle":Ljava/lang/Object;
    :goto_1
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getConversationId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getContributionId()Ljava/lang/String;

    move-result-object v5

    const/16 v2, 0xbc5

    .line 2582
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->toList()Ljava/util/List;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatData()Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->getOwnIMSI()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->isGroupChat()Z

    move-result v8

    .line 2583
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->isBotSessionAnonymized()Z

    move-result v9

    .line 2581
    move-object v2, v1

    move-object v3, v11

    invoke-virtual/range {v2 .. v9}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->sendDisplayedNotification(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;Ljava/lang/String;ZZ)V

    .line 2584
    .end local v1    # "message":Lcom/sec/internal/ims/servicemodules/im/MessageBase;
    .end local v10    # "info":Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo;
    .end local v11    # "rawHandle":Ljava/lang/Object;
    goto :goto_0

    .line 2586
    :cond_1
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mMessagesToSendDisplayNotification:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 2587
    const/16 v0, 0xbc4

    const-wide/16 v1, 0x5dc

    invoke-virtual {p0, v0, v1, v2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->sendMessageDelayed(IJ)V

    .line 2589
    :cond_2
    return-void
.end method

.method protected onSendImdnFailed(Lcom/sec/internal/constants/ims/servicemodules/im/event/SendImdnFailedEvent;Lcom/sec/internal/ims/servicemodules/im/MessageBase;)V
    .locals 10
    .param p1, "event"    # Lcom/sec/internal/constants/ims/servicemodules/im/event/SendImdnFailedEvent;
    .param p2, "msg"    # Lcom/sec/internal/ims/servicemodules/im/MessageBase;

    .line 1276
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onSendImdnFailed event: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", msg: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->logi(Ljava/lang/String;)V

    .line 1278
    instance-of v0, p2, Lcom/sec/internal/ims/servicemodules/im/ImMessage;

    if-nez v0, :cond_0

    instance-of v0, p2, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage;

    if-eqz v0, :cond_1

    .line 1279
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mClosedState:Lcom/sec/internal/ims/servicemodules/im/ImSessionClosedState;

    iget-object v1, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/SendImdnFailedEvent;->mRawHandle:Ljava/lang/Object;

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionStopReason;->INVOLUNTARILY:Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionStopReason;

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/ims/servicemodules/im/ImSessionClosedState;->handleCloseSession(Ljava/lang/Object;Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionStopReason;)V

    .line 1280
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->transitionToProperState()V

    .line 1283
    :cond_1
    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getNotificationStatus()Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    move-result-object v0

    .line 1284
    .local v0, "current":Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;
    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;->DELIVERED:Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    if-eq v0, v1, :cond_2

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;->DISPLAYED:Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    if-ne v0, v1, :cond_3

    .line 1285
    :cond_2
    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getConversationId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getContributionId()Ljava/lang/String;

    move-result-object v5

    const/16 v1, 0xbc3

    .line 1286
    invoke-virtual {p0, v1, p2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatData()Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->getOwnIMSI()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->isGroupChat()Z

    move-result v8

    .line 1287
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->isBotSessionAnonymized()Z

    move-result v9

    .line 1285
    move-object v2, p2

    invoke-virtual/range {v2 .. v9}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->sendDeliveredNotification(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;Ljava/lang/String;ZZ)V

    .line 1288
    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;->DISPLAYED:Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    if-ne v0, v1, :cond_3

    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->isRespondDisplay()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1289
    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getConversationId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getContributionId()Ljava/lang/String;

    move-result-object v5

    const/16 v1, 0xbc5

    .line 1290
    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->toList()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatData()Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->getOwnIMSI()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->isGroupChat()Z

    move-result v8

    .line 1291
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->isBotSessionAnonymized()Z

    move-result v9

    .line 1289
    move-object v2, p2

    invoke-virtual/range {v2 .. v9}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->sendDisplayedNotification(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;Ljava/lang/String;ZZ)V

    .line 1294
    :cond_3
    return-void
.end method

.method protected onSendMessageHandleReportFailed(Lcom/sec/internal/constants/ims/servicemodules/im/event/SendMessageFailedEvent;Lcom/sec/internal/ims/servicemodules/im/MessageBase;)V
    .locals 4
    .param p1, "event"    # Lcom/sec/internal/constants/ims/servicemodules/im/event/SendMessageFailedEvent;
    .param p2, "msg"    # Lcom/sec/internal/ims/servicemodules/im/MessageBase;

    .line 1303
    const/16 v0, 0xbba

    invoke-virtual {p0, v0, p2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1304
    .local v0, "callback":Landroid/os/Message;
    new-instance v1, Lcom/sec/internal/constants/ims/servicemodules/im/result/SendMessageResult;

    iget-object v2, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/SendMessageFailedEvent;->mRawHandle:Ljava/lang/Object;

    iget-object v3, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/SendMessageFailedEvent;->mResult:Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;

    invoke-direct {v1, v2, v3}, Lcom/sec/internal/constants/ims/servicemodules/im/result/SendMessageResult;-><init>(Ljava/lang/Object;Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;)V

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/sec/internal/helper/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Lcom/sec/internal/helper/AsyncResult;

    .line 1305
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1306
    return-void
.end method

.method protected onSendSlmMessage(Lcom/sec/internal/ims/servicemodules/im/MessageBase;)V
    .locals 26
    .param p1, "msg"    # Lcom/sec/internal/ims/servicemodules/im/MessageBase;

    .line 1541
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "msg cannot be null"

    invoke-static {v1, v2}, Lcom/sec/internal/helper/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1542
    const-string/jumbo v2, "onSendSlmMessage"

    invoke-virtual {v0, v2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->logi(Ljava/lang/String;)V

    .line 1544
    iget v2, v0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mPhoneId:I

    invoke-virtual {v0, v2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getRcsStrategy(I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object v2

    iget-object v3, v0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mUriGenerator:Lcom/sec/internal/ims/util/UriGenerator;

    invoke-virtual/range {p0 .. p0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getParticipantsUri()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->getNetworkPreferredUri(Lcom/sec/internal/ims/util/UriGenerator;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v2

    .line 1546
    .local v2, "participants":Ljava/util/Set;, "Ljava/util/Set<Lcom/sec/ims/util/ImsUri;>;"
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getType()Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;

    move-result-object v3

    sget-object v4, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;->TEXT_PUBLICACCOUNT:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;

    if-ne v3, v4, :cond_1

    .line 1547
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 1548
    .local v3, "participants1":Ljava/util/Set;, "Ljava/util/Set<Lcom/sec/ims/util/ImsUri;>;"
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/ims/util/ImsUri;

    .line 1549
    .local v5, "uri":Lcom/sec/ims/util/ImsUri;
    invoke-virtual {v5}, Lcom/sec/ims/util/ImsUri;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/sec/internal/helper/PublicAccountUri;->convertToPublicAccountUri(Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1550
    .end local v5    # "uri":Lcom/sec/ims/util/ImsUri;
    goto :goto_0

    .line 1551
    :cond_0
    move-object v2, v3

    .line 1554
    .end local v3    # "participants1":Ljava/util/Set;, "Ljava/util/Set<Lcom/sec/ims/util/ImsUri;>;"
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getContentType()Ljava/lang/String;

    move-result-object v3

    const-string v4, "application/vnd.gsma.botsuggestion.response.v1.0+json"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 1555
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getContentType()Ljava/lang/String;

    move-result-object v3

    const-string v4, "application/vnd.gsma.botsharedclientdata.v1.0+json"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 1556
    const/4 v3, 0x0

    iput-object v3, v0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mInReplyToContributionId:Ljava/lang/String;

    .line 1559
    :cond_2
    new-instance v3, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendSlmMessageParams;

    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getId()I

    move-result v5

    iget-object v6, v0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mChatId:Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getBody()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getContentType()Ljava/lang/String;

    move-result-object v8

    .line 1560
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getUserAlias()Ljava/lang/String;

    move-result-object v9

    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getImdnId()Ljava/lang/String;

    move-result-object v10

    new-instance v11, Ljava/util/Date;

    invoke-direct {v11}, Ljava/util/Date;-><init>()V

    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getDispositionNotification()Ljava/util/Set;

    move-result-object v12

    invoke-static {}, Lcom/sec/internal/ims/util/StringIdGenerator;->generateContributionId()Ljava/lang/String;

    move-result-object v13

    iget-object v4, v0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mChatData:Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;

    .line 1561
    invoke-virtual {v4}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->getConversationId()Ljava/lang/String;

    move-result-object v14

    iget-object v15, v0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mInReplyToContributionId:Ljava/lang/String;

    const/16 v4, 0xbc0

    invoke-virtual {v0, v4, v1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v17

    .line 1562
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getType()Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;

    move-result-object v4

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;->TEXT_PUBLICACCOUNT:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;

    const/16 v16, 0x1

    const/16 v18, 0x0

    if-ne v4, v1, :cond_3

    move/from16 v1, v16

    goto :goto_1

    :cond_3
    move/from16 v1, v18

    :goto_1
    invoke-virtual/range {p0 .. p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->isBroadcastMsg(Lcom/sec/internal/ims/servicemodules/im/MessageBase;)Z

    move-result v19

    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getDeviceName()Ljava/lang/String;

    move-result-object v20

    .line 1563
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getReliableMessage()Ljava/lang/String;

    move-result-object v21

    iget v4, v0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mPhoneId:I

    invoke-virtual {v0, v4}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getRcsStrategy(I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object v4

    move/from16 v22, v1

    const-string v1, "extra_ft_for_ns"

    invoke-interface {v4, v1}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->boolSetting(Ljava/lang/String;)Z

    move-result v1

    iget-object v4, v0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mChatData:Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;

    invoke-virtual {v4}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->getOwnIMSI()Ljava/lang/String;

    move-result-object v23

    .line 1564
    invoke-virtual/range {p0 .. p0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->isGroupChat()Z

    move-result v4

    if-nez v4, :cond_4

    invoke-virtual/range {p0 .. p0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getParticipantsUri()Ljava/util/Set;

    move-result-object v4

    invoke-static {v4}, Lcom/sec/internal/ims/util/ChatbotUriUtil;->hasChatbotUri(Ljava/util/Collection;)Z

    move-result v4

    if-eqz v4, :cond_4

    move/from16 v24, v16

    goto :goto_2

    :cond_4
    move/from16 v24, v18

    :goto_2
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getMaapTrafficType()Ljava/lang/String;

    move-result-object v25

    move-object v4, v3

    move-object/from16 v16, v2

    move/from16 v18, v22

    move/from16 v22, v1

    invoke-direct/range {v4 .. v25}, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendSlmMessageParams;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;Landroid/os/Message;ZZLjava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;)V

    move-object v1, v3

    .line 1565
    .local v1, "slmMessageParams":Lcom/sec/internal/constants/ims/servicemodules/im/params/SendSlmMessageParams;
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getReportMsgParams()Lcom/sec/internal/constants/ims/servicemodules/im/params/SendReportMsgParams;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 1566
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getReportMsgParams()Lcom/sec/internal/constants/ims/servicemodules/im/params/SendReportMsgParams;

    move-result-object v3

    iput-object v3, v1, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendSlmMessageParams;->mReportMsgParams:Lcom/sec/internal/constants/ims/servicemodules/im/params/SendReportMsgParams;

    .line 1569
    :cond_5
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getBody()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    iget-object v4, v0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mConfig:Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    invoke-virtual {v4}, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->getPagerModeLimit()I

    move-result v4

    if-le v3, v4, :cond_6

    sget-object v3, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$MessagingTech;->SLM_LARGE_MODE:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$MessagingTech;

    goto :goto_3

    .line 1570
    :cond_6
    sget-object v3, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$MessagingTech;->SLM_PAGER_MODE:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$MessagingTech;

    .line 1569
    :goto_3
    move-object/from16 v4, p1

    invoke-virtual {v4, v3}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->setMessagingTech(Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$MessagingTech;)V

    .line 1572
    iget-object v3, v0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mSlmService:Lcom/sec/internal/interfaces/ims/servicemodules/im/ISlmServiceInterface;

    invoke-interface {v3, v1}, Lcom/sec/internal/interfaces/ims/servicemodules/im/ISlmServiceInterface;->sendSlmMessage(Lcom/sec/internal/constants/ims/servicemodules/im/params/SendSlmMessageParams;)V

    .line 1573
    invoke-virtual/range {p0 .. p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->onMessageSending(Lcom/sec/internal/ims/servicemodules/im/MessageBase;)V

    .line 1574
    invoke-virtual/range {p0 .. p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->setSessionTimeoutThreshold(Lcom/sec/internal/ims/servicemodules/im/MessageBase;)V

    .line 1575
    return-void
.end method

.method protected onSimRefresh(I)V
    .locals 5
    .param p1, "phoneId"    # I

    .line 2263
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onSimRefresh : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 2264
    invoke-static {p1}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->getSimManagerFromSimSlot(I)Lcom/sec/internal/interfaces/ims/core/ISimManager;

    move-result-object v0

    .line 2265
    .local v0, "sm":Lcom/sec/internal/interfaces/ims/core/ISimManager;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getImsi()Ljava/lang/String;

    move-result-object v1

    .line 2266
    .local v1, "imsi":Ljava/lang/String;
    :goto_0
    iget v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mPhoneId:I

    if-eq v2, p1, :cond_1

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getOwnImsi()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2267
    sget-object v2, Lcom/sec/internal/ims/servicemodules/im/ImSession;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "update previous phoneId : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mPhoneId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "to :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 2268
    iput p1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mPhoneId:I

    .line 2270
    :cond_1
    return-void
.end method

.method protected processCancelMessages(ZLcom/sec/internal/constants/ims/servicemodules/im/ImError;)V
    .locals 2
    .param p1, "isFallback"    # Z
    .param p2, "error"    # Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    .line 1824
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "processCancelMessages :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->logi(Ljava/lang/String;)V

    .line 1825
    if-nez p2, :cond_0

    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->UNKNOWN_ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    goto :goto_0

    :cond_0
    move-object v0, p2

    .line 1826
    .local v0, "imError":Lcom/sec/internal/constants/ims/servicemodules/im/ImError;
    :goto_0
    invoke-virtual {p0, p1, v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->cancelInProgressMessages(ZLcom/sec/internal/constants/ims/servicemodules/im/ImError;)V

    .line 1827
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->cancelPendingFilesInQueue()V

    .line 1828
    return-void
.end method

.method protected processDeregistration()V
    .locals 6

    .line 1754
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "processDeregistration :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->logi(Ljava/lang/String;)V

    .line 1755
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->forceCloseSession()V

    .line 1757
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->isMsgRevocationSupported()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mNeedToRevokeMessages:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1758
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1759
    .local v0, "messages":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/sec/internal/ims/servicemodules/im/MessageBase;>;"
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mNeedToRevokeMessages:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1760
    .local v2, "imdnId":Ljava/lang/String;
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mGetter:Lcom/sec/internal/ims/servicemodules/im/interfaces/IGetter;

    sget-object v4, Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;->OUTGOING:Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    invoke-interface {v3, v2, v4}, Lcom/sec/internal/ims/servicemodules/im/interfaces/IGetter;->getMessage(Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;)Lcom/sec/internal/ims/servicemodules/im/MessageBase;

    move-result-object v3

    .line 1761
    .local v3, "msg":Lcom/sec/internal/ims/servicemodules/im/MessageBase;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getRevocationStatus()Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$RevocationStatus;

    move-result-object v4

    sget-object v5, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$RevocationStatus;->SENT:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$RevocationStatus;

    if-ne v4, v5, :cond_0

    .line 1762
    invoke-interface {v0, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 1763
    invoke-virtual {p0, v2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->stopMsgRevokeOperationTimer(Ljava/lang/String;)V

    .line 1765
    .end local v2    # "imdnId":Ljava/lang/String;
    .end local v3    # "msg":Lcom/sec/internal/ims/servicemodules/im/MessageBase;
    :cond_0
    goto :goto_0

    .line 1766
    :cond_1
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mListener:Lcom/sec/internal/ims/servicemodules/im/listener/ImSessionListener;

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$RevocationStatus;->SUCCESS:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$RevocationStatus;

    invoke-interface {v1, v2, v0, p0}, Lcom/sec/internal/ims/servicemodules/im/listener/ImSessionListener;->onMessageRevocationDone(Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$RevocationStatus;Ljava/util/Collection;Lcom/sec/internal/ims/servicemodules/im/ImSession;)V

    .line 1768
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mIsRevokeTimerRunning:Z

    .line 1769
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mNeedToRevokeMessages:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 1770
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/internal/helper/PreciseAlarmManager;->getInstance(Landroid/content/Context;)Lcom/sec/internal/helper/PreciseAlarmManager;

    move-result-object v1

    const/16 v2, 0xbca

    invoke-virtual {p0, v2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/helper/PreciseAlarmManager;->removeMessage(Landroid/os/Message;)V

    .line 1772
    .end local v0    # "messages":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/sec/internal/ims/servicemodules/im/MessageBase;>;"
    :cond_2
    const/4 v0, 0x0

    .line 1773
    .local v0, "isFtWifi":Z
    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->processCancelMessages(ZLcom/sec/internal/constants/ims/servicemodules/im/ImError;)V

    .line 1774
    return-void
.end method

.method public processIncomingSession(Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingSessionEvent;)V
    .locals 1
    .param p1, "event"    # Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingSessionEvent;

    .line 890
    iget-object v0, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingSessionEvent;->mRawHandle:Ljava/lang/Object;

    if-eqz v0, :cond_1

    .line 891
    iget-object v0, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingSessionEvent;->mRawHandle:Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->acquireWakeLock(Ljava/lang/Object;)V

    .line 893
    iget-boolean v0, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingSessionEvent;->mIsDeferred:Z

    if-eqz v0, :cond_0

    .line 894
    const/16 v0, 0x3f2

    invoke-virtual {p0, v0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->sendMessage(Landroid/os/Message;)V

    goto :goto_0

    .line 896
    :cond_0
    const/16 v0, 0x3ed

    invoke-virtual {p0, v0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->sendMessage(Landroid/os/Message;)V

    .line 900
    :cond_1
    :goto_0
    return-void
.end method

.method protected processPendingFtHttp(I)V
    .locals 7
    .param p1, "phoneId"    # I

    .line 1364
    invoke-static {p1}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->getSimManagerFromSimSlot(I)Lcom/sec/internal/interfaces/ims/core/ISimManager;

    move-result-object v0

    .line 1365
    .local v0, "sm":Lcom/sec/internal/interfaces/ims/core/ISimManager;
    if-nez v0, :cond_0

    const-string v1, ""

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getImsi()Ljava/lang/String;

    move-result-object v1

    :goto_0
    iput-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mOwnImsi:Ljava/lang/String;

    .line 1366
    const-string/jumbo v1, "processPendingFtHttp"

    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->logi(Ljava/lang/String;)V

    .line 1367
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mProcessingFileTransfer:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 1368
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mListener:Lcom/sec/internal/ims/servicemodules/im/listener/ImSessionListener;

    invoke-interface {v1, p0}, Lcom/sec/internal/ims/servicemodules/im/listener/ImSessionListener;->onProcessingFileTransferChanged(Lcom/sec/internal/ims/servicemodules/im/ImSession;)V

    .line 1370
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1371
    .local v1, "orderedPendingMessages":Ljava/util/List;, "Ljava/util/List<Lcom/sec/internal/ims/servicemodules/im/MessageBase;>;"
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mGetter:Lcom/sec/internal/ims/servicemodules/im/interfaces/IGetter;

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mChatId:Ljava/lang/String;

    invoke-interface {v2, v3}, Lcom/sec/internal/ims/servicemodules/im/interfaces/IGetter;->getAllPendingMessages(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/internal/ims/servicemodules/im/MessageBase;

    .line 1372
    .local v3, "m":Lcom/sec/internal/ims/servicemodules/im/MessageBase;
    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getOwnIMSI()Ljava/lang/String;

    move-result-object v4

    .line 1373
    .local v4, "ownImsi":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "IMSI of SIM sent this message = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", IMSI of current SIM = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mOwnImsi:Ljava/lang/String;

    invoke-static {v6}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->logi(Ljava/lang/String;)V

    .line 1374
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1375
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "current status of this message = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getStatus()Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->logi(Ljava/lang/String;)V

    .line 1376
    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getStatus()Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;

    move-result-object v5

    sget-object v6, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;->SENDING:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;

    if-eq v5, v6, :cond_1

    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getStatus()Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;

    move-result-object v5

    sget-object v6, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;->TO_SEND:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;

    if-ne v5, v6, :cond_3

    .line 1377
    :cond_1
    sget-object v5, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;->FAILED:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;

    invoke-virtual {v3, v5}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->updateStatus(Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;)V

    goto :goto_2

    .line 1379
    :cond_2
    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mOwnImsi:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1380
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1382
    .end local v3    # "m":Lcom/sec/internal/ims/servicemodules/im/MessageBase;
    .end local v4    # "ownImsi":Ljava/lang/String;
    :cond_3
    :goto_2
    goto :goto_1

    .line 1383
    :cond_4
    sget-object v2, Lcom/sec/internal/ims/servicemodules/im/-$$Lambda$ImSession$P0H322xlBdslh7IByTbbM8XV27M;->INSTANCE:Lcom/sec/internal/ims/servicemodules/im/-$$Lambda$ImSession$P0H322xlBdslh7IByTbbM8XV27M;

    invoke-interface {v1, v2}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    .line 1390
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/internal/ims/servicemodules/im/MessageBase;

    .line 1391
    .restart local v3    # "m":Lcom/sec/internal/ims/servicemodules/im/MessageBase;
    instance-of v4, v3, Lcom/sec/internal/ims/servicemodules/im/FtMessage;

    if-eqz v4, :cond_5

    .line 1392
    move-object v4, v3

    check-cast v4, Lcom/sec/internal/ims/servicemodules/im/FtMessage;

    invoke-direct {p0, v4}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->processPendingFtMessage(Lcom/sec/internal/ims/servicemodules/im/FtMessage;)V

    .line 1394
    .end local v3    # "m":Lcom/sec/internal/ims/servicemodules/im/MessageBase;
    :cond_5
    goto :goto_3

    .line 1395
    :cond_6
    return-void
.end method

.method protected processPendingMessages(I)V
    .locals 6
    .param p1, "phoneId"    # I

    .line 1331
    invoke-static {p1}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->getSimManagerFromSimSlot(I)Lcom/sec/internal/interfaces/ims/core/ISimManager;

    move-result-object v0

    .line 1332
    .local v0, "sm":Lcom/sec/internal/interfaces/ims/core/ISimManager;
    if-nez v0, :cond_0

    const-string v1, ""

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getImsi()Ljava/lang/String;

    move-result-object v1

    :goto_0
    iput-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mOwnImsi:Ljava/lang/String;

    .line 1333
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "processPendingMessages phoneId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->logi(Ljava/lang/String;)V

    .line 1334
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mProcessingFileTransfer:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 1335
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mListener:Lcom/sec/internal/ims/servicemodules/im/listener/ImSessionListener;

    invoke-interface {v1, p0}, Lcom/sec/internal/ims/servicemodules/im/listener/ImSessionListener;->onProcessingFileTransferChanged(Lcom/sec/internal/ims/servicemodules/im/ImSession;)V

    .line 1337
    new-instance v1, Ljava/util/TreeMap;

    invoke-direct {v1}, Ljava/util/TreeMap;-><init>()V

    .line 1338
    .local v1, "orderedPendingMessages":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Lcom/sec/internal/ims/servicemodules/im/MessageBase;>;"
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mOwnImsi:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1339
    const-string/jumbo v2, "processPendingMessages: ownImsi is not loaded."

    invoke-virtual {p0, v2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->loge(Ljava/lang/String;)V

    .line 1340
    return-void

    .line 1342
    :cond_1
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mGetter:Lcom/sec/internal/ims/servicemodules/im/interfaces/IGetter;

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mChatId:Ljava/lang/String;

    invoke-interface {v2, v3}, Lcom/sec/internal/ims/servicemodules/im/interfaces/IGetter;->getAllPendingMessages(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/internal/ims/servicemodules/im/MessageBase;

    .line 1343
    .local v3, "m":Lcom/sec/internal/ims/servicemodules/im/MessageBase;
    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getOwnIMSI()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1344
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mOwnImsi:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->updateOwnIMSI(Ljava/lang/String;)V

    .line 1345
    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getInsertedTimestamp()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v1, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 1346
    :cond_2
    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getOwnIMSI()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mOwnImsi:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1347
    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getInsertedTimestamp()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v1, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1349
    .end local v3    # "m":Lcom/sec/internal/ims/servicemodules/im/MessageBase;
    :cond_3
    :goto_2
    goto :goto_1

    .line 1351
    :cond_4
    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/internal/ims/servicemodules/im/MessageBase;

    .line 1352
    .restart local v3    # "m":Lcom/sec/internal/ims/servicemodules/im/MessageBase;
    instance-of v4, v3, Lcom/sec/internal/ims/servicemodules/im/ImMessage;

    if-eqz v4, :cond_5

    .line 1353
    move-object v4, v3

    check-cast v4, Lcom/sec/internal/ims/servicemodules/im/ImMessage;

    invoke-direct {p0, v4}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->processPendingImMessage(Lcom/sec/internal/ims/servicemodules/im/ImMessage;)V

    goto :goto_4

    .line 1354
    :cond_5
    instance-of v4, v3, Lcom/sec/internal/ims/servicemodules/im/FtMessage;

    if-eqz v4, :cond_6

    .line 1355
    move-object v4, v3

    check-cast v4, Lcom/sec/internal/ims/servicemodules/im/FtMessage;

    invoke-direct {p0, v4}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->processPendingFtMessage(Lcom/sec/internal/ims/servicemodules/im/FtMessage;)V

    .line 1357
    .end local v3    # "m":Lcom/sec/internal/ims/servicemodules/im/MessageBase;
    :cond_6
    :goto_4
    goto :goto_3

    .line 1358
    :cond_7
    return-void
.end method

.method protected processPendingNotifications(Ljava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sec/internal/ims/servicemodules/im/MessageBase;",
            ">;)V"
        }
    .end annotation

    .line 1403
    .local p1, "pendingNotifications":Ljava/util/List;, "Ljava/util/List<Lcom/sec/internal/ims/servicemodules/im/MessageBase;>;"
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->isRespondDisplay()Z

    move-result v0

    .line 1405
    .local v0, "isRespondDisplay":Z
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1406
    .local v1, "orderedMessages":Ljava/util/List;, "Ljava/util/List<Lcom/sec/internal/ims/servicemodules/im/MessageBase;>;"
    sget-object v2, Lcom/sec/internal/ims/servicemodules/im/-$$Lambda$ImSession$7tfU2p2KFQzRMgD806Dwbz0bwT4;->INSTANCE:Lcom/sec/internal/ims/servicemodules/im/-$$Lambda$ImSession$7tfU2p2KFQzRMgD806Dwbz0bwT4;

    invoke-interface {v1, v2}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    .line 1414
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1415
    .local v2, "deliveryNotifications":Ljava/util/List;, "Ljava/util/List<Lcom/sec/internal/ims/servicemodules/im/MessageBase;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/internal/ims/servicemodules/im/MessageBase;

    .line 1416
    .local v4, "m":Lcom/sec/internal/ims/servicemodules/im/MessageBase;
    invoke-virtual {v4}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getDirection()Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    move-result-object v5

    sget-object v6, Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;->INCOMING:Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    if-ne v5, v6, :cond_2

    .line 1417
    invoke-virtual {v4}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getNotificationStatus()Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    move-result-object v5

    .line 1418
    .local v5, "current":Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;
    invoke-virtual {v4}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getDesiredNotificationStatus()Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    move-result-object v6

    .line 1419
    .local v6, "desired":Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "sendDispositionNotification current : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " desired : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->logi(Ljava/lang/String;)V

    .line 1421
    sget-object v7, Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;->DELIVERED:Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    if-ne v6, v7, :cond_0

    sget-object v7, Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;->NONE:Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    if-ne v5, v7, :cond_0

    .line 1422
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1423
    :cond_0
    sget-object v7, Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;->DISPLAYED:Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    if-ne v6, v7, :cond_2

    .line 1424
    sget-object v7, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;->READ:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;

    invoke-virtual {v4, v7}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->updateStatus(Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;)V

    .line 1425
    sget-object v7, Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;->DELIVERED:Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    if-ne v5, v7, :cond_1

    if-eqz v0, :cond_1

    .line 1426
    iget-object v7, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mMessagesToSendDisplayNotification:Ljava/util/ArrayDeque;

    invoke-virtual {v7, v4}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1427
    :cond_1
    sget-object v7, Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;->NONE:Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    if-ne v5, v7, :cond_2

    .line 1428
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1429
    if-eqz v0, :cond_2

    .line 1430
    iget-object v7, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mMessagesToSendDisplayNotification:Ljava/util/ArrayDeque;

    invoke-virtual {v7, v4}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 1435
    .end local v4    # "m":Lcom/sec/internal/ims/servicemodules/im/MessageBase;
    .end local v5    # "current":Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;
    .end local v6    # "desired":Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;
    :cond_2
    :goto_1
    goto :goto_0

    .line 1437
    :cond_3
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/internal/ims/servicemodules/im/MessageBase;

    .line 1438
    .restart local v4    # "m":Lcom/sec/internal/ims/servicemodules/im/MessageBase;
    invoke-virtual {p0, v4}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->sendDeliveredNotification(Lcom/sec/internal/ims/servicemodules/im/MessageBase;)V

    .line 1439
    .end local v4    # "m":Lcom/sec/internal/ims/servicemodules/im/MessageBase;
    goto :goto_2

    .line 1441
    :cond_4
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mMessagesToSendDisplayNotification:Ljava/util/ArrayDeque;

    invoke-virtual {v3}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_5

    .line 1442
    const/16 v3, 0xbc4

    invoke-virtual {p0, v3}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->sendMessage(Landroid/os/Message;)V

    .line 1444
    :cond_5
    return-void
.end method

.method protected processRejoinGCSession()V
    .locals 2

    .line 1493
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->isRejoinable()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mPhoneId:I

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getRcsStrategy(I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object v0

    const-string v1, "groupchat_auto_rejoin"

    invoke-interface {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->boolSetting(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$State;->ACTIVE:Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$State;

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->isChatState(Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$State;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$State;->CLOSED_INVOLUNTARILY:Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$State;

    .line 1494
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->isChatState(Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$State;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1495
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "processRejoinGCSession : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->logi(Ljava/lang/String;)V

    .line 1496
    const/16 v0, 0x3fc

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->sendMessage(Landroid/os/Message;)V

    goto :goto_0

    .line 1497
    :cond_1
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->isRejoinable()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$State;->CLOSED_VOLUNTARILY:Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$State;

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->isChatState(Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$State;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mPhoneId:I

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getRcsStrategy(I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object v0

    const-string/jumbo v1, "support_auto_rejoin_for_bye"

    invoke-interface {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->boolSetting(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1499
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "processRejoinGCSession for bye : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->logi(Ljava/lang/String;)V

    .line 1500
    const/16 v0, 0x3fd

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->sendMessage(Landroid/os/Message;)V

    .line 1502
    :cond_2
    :goto_0
    return-void
.end method

.method protected readMessages(Ljava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1228
    .local p1, "messageIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 1230
    .local v0, "displayedTimestamp":Ljava/lang/Long;
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mConfig:Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->isAggrImdnSupported()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->isGroupChat()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 1232
    .local v1, "isAggregation":Z
    :goto_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1234
    .local v2, "ids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v1, :cond_1

    .line 1235
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mGetter:Lcom/sec/internal/ims/servicemodules/im/interfaces/IGetter;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatId()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;->INCOMING:Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    invoke-interface {v3, v4, v5, v0}, Lcom/sec/internal/ims/servicemodules/im/interfaces/IGetter;->getMessageIdsForDisplayAggregation(Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;Ljava/lang/Long;)Ljava/util/List;

    move-result-object v3

    .line 1236
    .local v3, "l":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v3, v2}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 1237
    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1240
    .end local v3    # "l":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_1
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mGetter:Lcom/sec/internal/ims/servicemodules/im/interfaces/IGetter;

    invoke-interface {v3, v2}, Lcom/sec/internal/ims/servicemodules/im/interfaces/IGetter;->getMessages(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v3

    .line 1241
    .local v3, "messages":Ljava/util/List;, "Ljava/util/List<Lcom/sec/internal/ims/servicemodules/im/MessageBase;>;"
    sget-object v4, Lcom/sec/internal/ims/servicemodules/im/-$$Lambda$ImSession$PrMtWDsBW8rwoSn9q_uHztqNscg;->INSTANCE:Lcom/sec/internal/ims/servicemodules/im/-$$Lambda$ImSession$PrMtWDsBW8rwoSn9q_uHztqNscg;

    invoke-interface {v3, v4}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    .line 1249
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->isRespondDisplay()Z

    move-result v4

    .line 1250
    .local v4, "isRespondDisplay":Z
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sec/internal/ims/servicemodules/im/MessageBase;

    .line 1251
    .local v6, "m":Lcom/sec/internal/ims/servicemodules/im/MessageBase;
    instance-of v7, v6, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage;

    if-nez v7, :cond_3

    invoke-virtual {v6}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getStatus()Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;

    move-result-object v7

    sget-object v8, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;->FAILED:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;

    if-eq v7, v8, :cond_2

    goto :goto_2

    .line 1259
    :cond_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Do not update message with status FAILED: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getId()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->loge(Ljava/lang/String;)V

    goto :goto_3

    .line 1252
    :cond_3
    :goto_2
    sget-object v7, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;->READ:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;

    invoke-virtual {v6, v7}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->updateStatus(Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;)V

    .line 1253
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->updateDisplayedTimestamp(J)V

    .line 1254
    invoke-virtual {v6}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->isDisplayedNotificationRequired()Z

    move-result v7

    if-eqz v7, :cond_4

    if-eqz v4, :cond_4

    .line 1255
    sget-object v7, Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;->DISPLAYED:Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    invoke-virtual {v6, v7}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->updateDesiredNotificationStatus(Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;)V

    .line 1256
    iget-object v7, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mMessagesToSendDisplayNotification:Ljava/util/ArrayDeque;

    invoke-virtual {v7, v6}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 1261
    .end local v6    # "m":Lcom/sec/internal/ims/servicemodules/im/MessageBase;
    :cond_4
    :goto_3
    goto :goto_1

    .line 1263
    :cond_5
    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mMessagesToSendDisplayNotification:Ljava/util/ArrayDeque;

    invoke-virtual {v5}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_6

    .line 1264
    const/16 v5, 0xbc4

    invoke-virtual {p0, v5}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->sendMessage(Landroid/os/Message;)V

    .line 1266
    :cond_6
    return-void
.end method

.method protected receiveComposingNotification(Lcom/sec/internal/constants/ims/servicemodules/im/event/ImComposingEvent;)V
    .locals 6
    .param p1, "event"    # Lcom/sec/internal/constants/ims/servicemodules/im/event/ImComposingEvent;

    .line 960
    iget v0, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImComposingEvent;->mInterval:I

    if-eqz v0, :cond_0

    .line 961
    iget v0, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImComposingEvent;->mInterval:I

    iput v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mComposingNotificationInterval:I

    .line 964
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mGetter:Lcom/sec/internal/ims/servicemodules/im/interfaces/IGetter;

    iget-object v1, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImComposingEvent;->mUri:Ljava/lang/String;

    invoke-static {v1}, Lcom/sec/ims/util/ImsUri;->parse(Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/interfaces/IGetter;->normalizeUri(Lcom/sec/ims/util/ImsUri;)Lcom/sec/ims/util/ImsUri;

    move-result-object v0

    .line 965
    .local v0, "remoteUri":Lcom/sec/ims/util/ImsUri;
    iget-boolean v1, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImComposingEvent;->mIsComposing:Z

    if-eqz v1, :cond_1

    .line 966
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mComposingActiveUris:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 967
    const/16 v1, 0xbd0

    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->removeMessages(I)V

    .line 968
    iget v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mComposingNotificationInterval:I

    int-to-long v2, v2

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    invoke-virtual {p0, v1, v2, v3}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->sendMessageDelayed(IJ)V

    .line 969
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->checkAndUpdateSessionTimeout()V

    goto :goto_0

    .line 971
    :cond_1
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mComposingActiveUris:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 973
    :goto_0
    return-void
.end method

.method protected receiveConferenceInfo(Lcom/sec/internal/constants/ims/servicemodules/im/event/ImSessionConferenceInfoUpdateEvent;)V
    .locals 1
    .param p1, "event"    # Lcom/sec/internal/constants/ims/servicemodules/im/event/ImSessionConferenceInfoUpdateEvent;

    .line 951
    const/16 v0, 0x7d5

    invoke-virtual {p0, v0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->sendMessage(Landroid/os/Message;)V

    .line 952
    return-void
.end method

.method protected receiveDeliveryTimeout()V
    .locals 1

    .line 1088
    const/16 v0, 0xbc7

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->sendMessage(Landroid/os/Message;)V

    .line 1089
    return-void
.end method

.method protected receiveMessage(Lcom/sec/internal/ims/servicemodules/im/MessageBase;Ljava/lang/Object;)V
    .locals 3
    .param p1, "msg"    # Lcom/sec/internal/ims/servicemodules/im/MessageBase;
    .param p2, "rawHandle"    # Ljava/lang/Object;

    .line 1213
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 1214
    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getImSessionInfo(Ljava/lang/Object;)Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo;

    move-result-object v0

    .line 1215
    .local v0, "info":Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo;->isSnFSession()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1216
    iget-object v1, v0, Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo;->mReceivedMessageIds:Ljava/util/Set;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1219
    .end local v0    # "info":Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo;
    :cond_0
    const/16 v0, 0xbbb

    invoke-virtual {p0, v0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->sendMessage(Landroid/os/Message;)V

    .line 1220
    return-void
.end method

.method public receiveSessionClosed(Lcom/sec/internal/constants/ims/servicemodules/im/event/ImSessionClosedEvent;)V
    .locals 1
    .param p1, "event"    # Lcom/sec/internal/constants/ims/servicemodules/im/event/ImSessionClosedEvent;

    .line 942
    const/16 v0, 0x3f6

    invoke-virtual {p0, v0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->sendMessage(Landroid/os/Message;)V

    .line 943
    return-void
.end method

.method public receiveSessionEstablished(Lcom/sec/internal/constants/ims/servicemodules/im/event/ImSessionEstablishedEvent;)V
    .locals 1
    .param p1, "event"    # Lcom/sec/internal/constants/ims/servicemodules/im/event/ImSessionEstablishedEvent;

    .line 933
    const/16 v0, 0x3eb

    invoke-virtual {p0, v0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->sendMessage(Landroid/os/Message;)V

    .line 934
    return-void
.end method

.method protected receiveSlmMessage(Lcom/sec/internal/ims/servicemodules/im/MessageBase;)V
    .locals 1
    .param p1, "msg"    # Lcom/sec/internal/ims/servicemodules/im/MessageBase;

    .line 1314
    const/16 v0, 0xbc1

    invoke-virtual {p0, v0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->sendMessage(Landroid/os/Message;)V

    .line 1315
    return-void
.end method

.method protected receiveTransfer(Lcom/sec/internal/ims/servicemodules/im/FtMessage;Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;Z)V
    .locals 2
    .param p1, "msg"    # Lcom/sec/internal/ims/servicemodules/im/FtMessage;
    .param p2, "event"    # Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;
    .param p3, "resume"    # Z

    .line 1991
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "receiveTransfer: mProcessingFileTransfer size: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mProcessingFileTransfer:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->logi(Ljava/lang/String;)V

    .line 1993
    const/16 v0, 0xbbe

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p1, v0, p2, p3}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->receiveTransfer(Landroid/os/Message;Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;Z)V

    .line 1995
    instance-of v0, p1, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mProcessingFileTransfer:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1996
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mPendingFileTransfer:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1997
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->addToProcessingFileTransfer(Lcom/sec/internal/ims/servicemodules/im/FtMessage;)V

    .line 1998
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mListener:Lcom/sec/internal/ims/servicemodules/im/listener/ImSessionListener;

    invoke-interface {v0, p0}, Lcom/sec/internal/ims/servicemodules/im/listener/ImSessionListener;->onProcessingFileTransferChanged(Lcom/sec/internal/ims/servicemodules/im/ImSession;)V

    .line 2000
    :cond_0
    return-void
.end method

.method protected reconnectGuardTimerExpired()V
    .locals 1

    .line 2500
    iget-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mIsRevokeTimerRunning:Z

    if-nez v0, :cond_0

    .line 2501
    const/16 v0, 0xbca

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->sendMessage(I)V

    .line 2503
    :cond_0
    return-void
.end method

.method public rejectSession()V
    .locals 1

    .line 915
    const/16 v0, 0x3f0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->sendMessage(Landroid/os/Message;)V

    .line 916
    return-void
.end method

.method protected rejectSession(I)V
    .locals 2
    .param p1, "reason"    # I

    .line 924
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x3f0

    invoke-virtual {p0, v1, v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->sendMessage(Landroid/os/Message;)V

    .line 925
    return-void
.end method

.method protected releaseWakeLock(Ljava/lang/Object;)V
    .locals 2
    .param p1, "rawHandle"    # Ljava/lang/Object;

    .line 243
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 244
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "releaseWakeLock: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->logi(Ljava/lang/String;)V

    .line 245
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 247
    :cond_0
    return-void
.end method

.method protected removeImSessionInfo(Ljava/lang/Object;)Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo;
    .locals 2
    .param p1, "rawHandle"    # Ljava/lang/Object;

    .line 2142
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getImSessionInfo(Ljava/lang/Object;)Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo;

    move-result-object v0

    .line 2143
    .local v0, "info":Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo;
    if-eqz v0, :cond_0

    .line 2144
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mImSessionInfoList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 2145
    return-object v0

    .line 2147
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method protected removeImSessionInfo(Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo;)Z
    .locals 1
    .param p1, "info"    # Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo;

    .line 2157
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mImSessionInfoList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected removeInProgressRequestCallback(Landroid/os/Message;)V
    .locals 2
    .param p1, "cb"    # Landroid/os/Message;

    .line 2655
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "removeInProgressRequestCallback: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->logi(Ljava/lang/String;)V

    .line 2656
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mInProgressRequestCallbacks:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 2658
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mInProgressRequestCallbacks:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2659
    const/16 v0, 0x7e1

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->removeMessages(I)V

    .line 2661
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->handlePendingEvents()V

    .line 2663
    :cond_0
    return-void
.end method

.method protected removeMsgFromListForRevoke(Ljava/lang/String;)V
    .locals 1
    .param p1, "imdnId"    # Ljava/lang/String;

    .line 2481
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->removeMsgFromListForRevoke(Ljava/util/Collection;)V

    .line 2482
    return-void
.end method

.method protected removeMsgFromListForRevoke(Ljava/util/Collection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 2485
    .local p1, "imdnIds":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mNeedToRevokeMessages:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 2486
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mListener:Lcom/sec/internal/ims/servicemodules/im/listener/ImSessionListener;

    invoke-interface {v0, p1}, Lcom/sec/internal/ims/servicemodules/im/listener/ImSessionListener;->removeFromRevokingMessages(Ljava/util/Collection;)V

    .line 2487
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "removeMsgFromListForRevoke() : msg imdnId : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", remaining list size : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mNeedToRevokeMessages:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->logi(Ljava/lang/String;)V

    .line 2488
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mNeedToRevokeMessages:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2489
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mIsRevokeTimerRunning:Z

    .line 2490
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/internal/helper/PreciseAlarmManager;->getInstance(Landroid/content/Context;)Lcom/sec/internal/helper/PreciseAlarmManager;

    move-result-object v0

    const/16 v1, 0xbca

    .line 2491
    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 2490
    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/PreciseAlarmManager;->removeMessage(Landroid/os/Message;)V

    .line 2493
    :cond_0
    return-void
.end method

.method protected removeParticipants(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sec/ims/util/ImsUri;",
            ">;)V"
        }
    .end annotation

    .line 1040
    .local p1, "participants":Ljava/util/List;, "Ljava/util/List<Lcom/sec/ims/util/ImsUri;>;"
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->isGroupChat()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1041
    const/16 v0, 0x7d6

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v1, p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->sendMessage(Landroid/os/Message;)V

    .line 1043
    :cond_0
    return-void
.end method

.method protected restartSession(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "threadId"    # I
    .param p2, "requestMessageId"    # Ljava/lang/String;
    .param p3, "subject"    # Ljava/lang/String;

    .line 983
    iput p1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mThreadId:I

    .line 984
    iput-object p2, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mRequestMessageId:Ljava/lang/String;

    .line 985
    invoke-direct {p0, p3}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->setSubject(Ljava/lang/String;)V

    .line 986
    return-void
.end method

.method protected resumeTransferFile(Lcom/sec/internal/ims/servicemodules/im/FtMessage;)V
    .locals 2
    .param p1, "msg"    # Lcom/sec/internal/ims/servicemodules/im/FtMessage;

    .line 1952
    invoke-static {p1}, Lcom/sec/internal/helper/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1953
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "resumeTransferFile: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mProcessingFileTransfer size: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mProcessingFileTransfer:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->logi(Ljava/lang/String;)V

    .line 1955
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getConversationId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->setConversationId(Ljava/lang/String;)V

    .line 1956
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getContributionId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->setContributionId(Ljava/lang/String;)V

    .line 1957
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->setIsResuming(Z)V

    .line 1958
    const/16 v0, 0xbbe

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->setFtCompleteCallback(Landroid/os/Message;)V

    .line 1959
    instance-of v0, p1, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage;

    if-eqz v0, :cond_2

    .line 1960
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->isVoluntaryDeparture()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1961
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;->CANCELED_BY_USER:Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    invoke-virtual {p1, v0}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->cancelTransfer(Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;)V

    goto :goto_1

    .line 1962
    :cond_0
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->isGroupChat()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1963
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->attachFile(Lcom/sec/internal/ims/servicemodules/im/FtMessage;)V

    goto :goto_1

    .line 1965
    :cond_1
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->sendFile()V

    goto :goto_1

    .line 1968
    :cond_2
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mProcessingFileTransfer:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1969
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->isGroupChat()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1970
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->attachFile(Lcom/sec/internal/ims/servicemodules/im/FtMessage;)V

    goto :goto_0

    .line 1972
    :cond_3
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->sendFile()V

    .line 1974
    :goto_0
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->addToProcessingFileTransfer(Lcom/sec/internal/ims/servicemodules/im/FtMessage;)V

    .line 1975
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mListener:Lcom/sec/internal/ims/servicemodules/im/listener/ImSessionListener;

    invoke-interface {v0, p0}, Lcom/sec/internal/ims/servicemodules/im/listener/ImSessionListener;->onProcessingFileTransferChanged(Lcom/sec/internal/ims/servicemodules/im/ImSession;)V

    goto :goto_1

    .line 1976
    :cond_4
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mProcessingFileTransfer:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mPendingFileTransfer:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 1977
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->updateQueued()V

    .line 1978
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mPendingFileTransfer:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1981
    :cond_5
    :goto_1
    return-void
.end method

.method public sendComposing(ZI)V
    .locals 2
    .param p1, "isTyping"    # Z
    .param p2, "interval"    # I

    .line 1138
    iput p2, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mComposingNotificationInterval:I

    .line 1139
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const/16 v1, 0xbcd

    invoke-virtual {p0, v1, v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->sendMessage(Landroid/os/Message;)V

    .line 1140
    return-void
.end method

.method protected sendDeliveredNotification(Lcom/sec/internal/ims/servicemodules/im/MessageBase;)V
    .locals 1
    .param p1, "msg"    # Lcom/sec/internal/ims/servicemodules/im/MessageBase;

    .line 1583
    const/16 v0, 0xbc2

    invoke-virtual {p0, v0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->sendMessage(Landroid/os/Message;)V

    .line 1584
    return-void
.end method

.method protected sendFile(Lcom/sec/internal/ims/servicemodules/im/FtMessage;)V
    .locals 2
    .param p1, "msg"    # Lcom/sec/internal/ims/servicemodules/im/FtMessage;

    .line 1919
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "sendFile::entering .... queue size: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mProcessingFileTransfer:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->logi(Ljava/lang/String;)V

    .line 1920
    instance-of v0, p1, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage;

    const/16 v1, 0xbbe

    if-eqz v0, :cond_1

    .line 1921
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->isFtSms()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1922
    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->setFtCompleteCallback(Landroid/os/Message;)V

    .line 1924
    :cond_0
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->sendFile()V

    goto :goto_0

    .line 1926
    :cond_1
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mProcessingFileTransfer:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1927
    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->setFtCompleteCallback(Landroid/os/Message;)V

    .line 1931
    const/16 v0, 0xbbd

    invoke-virtual {p0, v0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->sendMessage(Landroid/os/Message;)V

    .line 1932
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->addToProcessingFileTransfer(Lcom/sec/internal/ims/servicemodules/im/FtMessage;)V

    .line 1933
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mListener:Lcom/sec/internal/ims/servicemodules/im/listener/ImSessionListener;

    invoke-interface {v0, p0}, Lcom/sec/internal/ims/servicemodules/im/listener/ImSessionListener;->onProcessingFileTransferChanged(Lcom/sec/internal/ims/servicemodules/im/ImSession;)V

    goto :goto_0

    .line 1934
    :cond_2
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mPendingFileTransfer:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mProcessingFileTransfer:Ljava/util/ArrayList;

    .line 1935
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1940
    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->setFtCompleteCallback(Landroid/os/Message;)V

    .line 1941
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mPendingFileTransfer:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1944
    :cond_3
    :goto_0
    return-void
.end method

.method public sendImMessage(Lcom/sec/internal/ims/servicemodules/im/MessageBase;)V
    .locals 5
    .param p1, "msg"    # Lcom/sec/internal/ims/servicemodules/im/MessageBase;

    .line 1157
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "sendImMessage: ChatbotMessagingTech = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getChatbotMessagingTech()Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ChatbotMessagingTech;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->logi(Ljava/lang/String;)V

    .line 1158
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getBody()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 1159
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getChatbotMessagingTech()Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ChatbotMessagingTech;

    move-result-object v0

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ChatbotMessagingTech;->UNKNOWN:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ChatbotMessagingTech;

    if-ne v0, v1, :cond_0

    .line 1160
    iget v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mPhoneId:I

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getRcsStrategy(I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mConfig:Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->isGroupChat()Z

    move-result v2

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getParticipantsUri()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->checkChatbotMessagingTech(Lcom/sec/internal/ims/servicemodules/im/ImConfig;ZLjava/util/Set;)Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ChatbotMessagingTech;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->setChatbotMessagingTech(Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ChatbotMessagingTech;)V

    .line 1162
    :cond_0
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getChatbotMessagingTech()Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ChatbotMessagingTech;

    move-result-object v0

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ChatbotMessagingTech;->NONE:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ChatbotMessagingTech;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v0, v1, :cond_3

    .line 1163
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getChatbotMessagingTech()Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ChatbotMessagingTech;

    move-result-object v0

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ChatbotMessagingTech;->NOT_AVAILABLE:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ChatbotMessagingTech;

    if-ne v0, v1, :cond_1

    .line 1164
    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->REMOTE_TEMPORARILY_UNAVAILABLE:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;->NONE:Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;

    invoke-direct {v0, v1, v2}, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;-><init>(Lcom/sec/internal/constants/ims/servicemodules/im/ImError;Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;)V

    new-instance v1, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;

    sget-object v2, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;->DISPLAY_ERROR:Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;

    invoke-direct {v1, v2}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;-><init>(Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;)V

    invoke-virtual {p1, v0, v1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->onSendMessageDone(Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;)V

    .line 1166
    return-void

    .line 1168
    :cond_1
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getChatbotMessagingTech()Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ChatbotMessagingTech;

    move-result-object v0

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ChatbotMessagingTech;->STANDALONE_MESSAGING:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ChatbotMessagingTech;

    if-ne v0, v1, :cond_2

    move v0, v2

    goto :goto_0

    :cond_2
    move v0, v3

    :goto_0
    invoke-virtual {p1, v0}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->setSlmSvcMsg(Z)V

    .line 1171
    :cond_3
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getParticipantsUri()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/internal/ims/util/ChatbotUriUtil;->hasChatbotUri(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 1172
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mConfig:Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->getChatEnabled()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mConfig:Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    .line 1173
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->getSlmAuth()Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$SlmAuth;

    move-result-object v0

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$SlmAuth;->ENABLED:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$SlmAuth;

    if-ne v0, v1, :cond_4

    goto :goto_1

    :cond_4
    move v2, v3

    :goto_1
    move v0, v2

    .line 1174
    .local v0, "isSlm":Z
    invoke-virtual {p1, v0}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->setSlmSvcMsg(Z)V

    .line 1177
    .end local v0    # "isSlm":Z
    :cond_5
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getIsSlmSvcMsg()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1178
    const/16 v0, 0xbbf

    invoke-virtual {p0, v0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->sendMessage(Landroid/os/Message;)V

    goto :goto_2

    .line 1180
    :cond_6
    const/16 v0, 0xbb9

    invoke-virtual {p0, v0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->sendMessage(Landroid/os/Message;)V

    .line 1187
    :goto_2
    instance-of v0, p1, Lcom/sec/internal/ims/servicemodules/im/ImMessage;

    if-eqz v0, :cond_7

    iget v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mPhoneId:I

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getRcsStrategy(I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object v0

    const-string/jumbo v1, "support_sendmsg_resp_timeout"

    invoke-interface {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->boolSetting(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1188
    const/16 v0, 0xbc6

    invoke-virtual {p0, v0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mSendMessageResponseTimeout:I

    int-to-long v1, v1

    const-wide/16 v3, 0x3e8

    mul-long/2addr v1, v3

    invoke-virtual {p0, v0, v1, v2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->sendMessageDelayed(Landroid/os/Message;J)V

    .line 1191
    :cond_7
    return-void
.end method

.method protected setContributionId(Ljava/lang/String;)V
    .locals 1
    .param p1, "contributionId"    # Ljava/lang/String;

    .line 548
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mChatData:Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;

    invoke-virtual {v0, p1}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->setContributionId(Ljava/lang/String;)V

    .line 549
    return-void
.end method

.method protected setConversationId(Ljava/lang/String;)V
    .locals 1
    .param p1, "conversationId"    # Ljava/lang/String;

    .line 713
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mChatData:Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;

    invoke-virtual {v0, p1}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->setConversationId(Ljava/lang/String;)V

    .line 714
    return-void
.end method

.method protected setDeviceId(Ljava/lang/String;)V
    .locals 0
    .param p1, "deviceId"    # Ljava/lang/String;

    .line 511
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mDeviceId:Ljava/lang/String;

    .line 512
    return-void
.end method

.method protected setDirection(Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;)V
    .locals 1
    .param p1, "imDirection"    # Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    .line 749
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mChatData:Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;

    invoke-virtual {v0, p1}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->setDirection(Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;)V

    .line 750
    return-void
.end method

.method protected setInReplyToContributionId(Ljava/lang/String;)V
    .locals 0
    .param p1, "inReplyToContributionId"    # Ljava/lang/String;

    .line 731
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mInReplyToContributionId:Ljava/lang/String;

    .line 732
    return-void
.end method

.method protected setInitiator(Lcom/sec/ims/util/ImsUri;)V
    .locals 0
    .param p1, "initiator"    # Lcom/sec/ims/util/ImsUri;

    .line 1106
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mInitiator:Lcom/sec/ims/util/ImsUri;

    .line 1107
    return-void
.end method

.method protected setInitiatorAlias(Ljava/lang/String;)V
    .locals 0
    .param p1, "alias"    # Ljava/lang/String;

    .line 484
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mInitiatorAlias:Ljava/lang/String;

    .line 485
    return-void
.end method

.method protected setIsTimerExpired(Z)V
    .locals 0
    .param p1, "isTimerExpired"    # Z

    .line 2477
    iput-boolean p1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mIsTimerExpired:Z

    .line 2478
    return-void
.end method

.method protected setIsTokenUsed(Z)V
    .locals 0
    .param p1, "isTokenUsed"    # Z

    .line 493
    iput-boolean p1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mIsTokenUsed:Z

    .line 494
    return-void
.end method

.method protected setNetworkFallbackMech(Lcom/sec/internal/ims/servicemodules/im/ImSession$ChatFallbackMech;)V
    .locals 2
    .param p1, "mech"    # Lcom/sec/internal/ims/servicemodules/im/ImSession$ChatFallbackMech;

    .line 2460
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mChatFallbackMech:Lcom/sec/internal/ims/servicemodules/im/ImSession$ChatFallbackMech;

    .line 2461
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setNetworkFallbackMech: mChatFallbackMech="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mChatFallbackMech:Lcom/sec/internal/ims/servicemodules/im/ImSession$ChatFallbackMech;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->logi(Ljava/lang/String;)V

    .line 2462
    return-void
.end method

.method protected setNetworkFallbackMech(ZZ)V
    .locals 2
    .param p1, "isMsgFallbackSupported"    # Z
    .param p2, "isMsgRevokeSupported"    # Z

    .line 2444
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImSession$ChatFallbackMech;->NONE:Lcom/sec/internal/ims/servicemodules/im/ImSession$ChatFallbackMech;

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mChatFallbackMech:Lcom/sec/internal/ims/servicemodules/im/ImSession$ChatFallbackMech;

    .line 2445
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->isGroupChat()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2446
    if-eqz p1, :cond_0

    .line 2447
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImSession$ChatFallbackMech;->NETWORK_INTERWORKING:Lcom/sec/internal/ims/servicemodules/im/ImSession$ChatFallbackMech;

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mChatFallbackMech:Lcom/sec/internal/ims/servicemodules/im/ImSession$ChatFallbackMech;

    goto :goto_0

    .line 2448
    :cond_0
    if-eqz p2, :cond_1

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mConfig:Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->getChatRevokeTimer()I

    move-result v0

    if-lez v0, :cond_1

    .line 2449
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImSession$ChatFallbackMech;->MESSAGE_REVOCATION:Lcom/sec/internal/ims/servicemodules/im/ImSession$ChatFallbackMech;

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mChatFallbackMech:Lcom/sec/internal/ims/servicemodules/im/ImSession$ChatFallbackMech;

    .line 2452
    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setNetworkFallbackMech: isMsgFallbackSupported="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isMsgRevokeSupported="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isGroupChat()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2454
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->isGroupChat()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", getChatRevokeTimer()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mConfig:Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    .line 2455
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->getChatRevokeTimer()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mChatFallbackMech="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mChatFallbackMech:Lcom/sec/internal/ims/servicemodules/im/ImSession$ChatFallbackMech;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2452
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->logi(Ljava/lang/String;)V

    .line 2457
    return-void
.end method

.method protected setOwnImsi(Ljava/lang/String;)V
    .locals 1
    .param p1, "ownImsi"    # Ljava/lang/String;

    .line 320
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mChatData:Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;

    invoke-virtual {v0, p1}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->setOwnIMSI(Ljava/lang/String;)V

    .line 321
    return-void
.end method

.method protected setOwnPhoneNum(Ljava/lang/String;)V
    .locals 1
    .param p1, "ownNum"    # Ljava/lang/String;

    .line 302
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mChatData:Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;

    invoke-virtual {v0, p1}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->setOwnPhoneNum(Ljava/lang/String;)V

    .line 303
    return-void
.end method

.method protected setRawHandle(Ljava/lang/Object;)V
    .locals 0
    .param p1, "handle"    # Ljava/lang/Object;

    .line 2624
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mRawHandle:Ljava/lang/Object;

    .line 2625
    return-void
.end method

.method protected setSessionTimeoutThreshold(Lcom/sec/internal/ims/servicemodules/im/MessageBase;)V
    .locals 3
    .param p1, "msg"    # Lcom/sec/internal/ims/servicemodules/im/MessageBase;

    .line 1200
    const-string v0, "msg cannot be null"

    invoke-static {p1, v0}, Lcom/sec/internal/helper/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1201
    instance-of v0, p1, Lcom/sec/internal/ims/servicemodules/im/ImMessage;

    if-eqz v0, :cond_0

    .line 1202
    const/16 v0, 0x3fb

    invoke-virtual {p0, v0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    const-wide/32 v1, 0x493e0

    invoke-virtual {p0, v0, v1, v2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->sendMessageDelayed(Landroid/os/Message;J)V

    .line 1204
    :cond_0
    return-void
.end method

.method protected setSessionUri(Lcom/sec/ims/util/ImsUri;)V
    .locals 1
    .param p1, "uri"    # Lcom/sec/ims/util/ImsUri;

    .line 576
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mChatData:Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;

    invoke-virtual {v0, p1}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->setSessionUri(Lcom/sec/ims/util/ImsUri;)V

    .line 577
    return-void
.end method

.method protected startMsgRevokeOperationTimer(Ljava/lang/String;)V
    .locals 3
    .param p1, "imdnId"    # Ljava/lang/String;

    .line 2558
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "startMsgRevokeOperationTimer() : imdnId : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->logi(Ljava/lang/String;)V

    .line 2559
    const/16 v0, 0xbcb

    invoke-virtual {p0, v0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v1, 0x2710

    invoke-virtual {p0, v0, v1, v2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->sendMessageDelayed(Landroid/os/Message;J)V

    .line 2560
    return-void
.end method

.method public startSession()V
    .locals 1

    .line 877
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->isBroadcastMsg(Lcom/sec/internal/ims/servicemodules/im/MessageBase;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 878
    const-string v0, "broadcast message just use SLM, should never start session"

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->logi(Ljava/lang/String;)V

    .line 879
    return-void

    .line 881
    :cond_0
    const/16 v0, 0x3e9

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->sendMessage(Landroid/os/Message;)V

    .line 882
    return-void
.end method

.method protected stopMsgRevokeOperationTimer(Ljava/lang/String;)V
    .locals 2
    .param p1, "imdnId"    # Ljava/lang/String;

    .line 2563
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "stopMsgRevokeOperationTimer() : imdnId : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->logi(Ljava/lang/String;)V

    .line 2564
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getHandler()Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0xbcb

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 2565
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 2279
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ImSession [mChatData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mChatData:Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mSdpContentType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mSdpContentType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mThreadId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mThreadId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mSupportedFeatures="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mSupportedFeatures:Ljava/util/EnumSet;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mRemoteAcceptTypes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mRemoteAcceptTypes:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mRemoteAcceptWrappedTypes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mRemoteAcceptWrappedTypes:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mInReplyToContributionId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mInReplyToContributionId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mIsComposing="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mIsComposing:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mParticipants="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mParticipants:Ljava/util/HashMap;

    .line 2287
    invoke-static {v1}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mRawHandle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mRawHandle:Ljava/lang/Object;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", mClosedReason="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mClosedReason:Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionClosedReason;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", mComposingNotificationInterval="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mComposingNotificationInterval:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mComposingActiveUris="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mComposingActiveUris:Ljava/util/Set;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", mProcessingFileTransfer="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mProcessingFileTransfer:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", mPendingFileTransfer="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mPendingFileTransfer:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", mRequestMessageId="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mRequestMessageId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", mCurrentMessages="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mCurrentMessages:Ljava/util/List;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mRawHandle:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mServiceId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mServiceId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mAcceptTypes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mAcceptTypes:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mAcceptWrappedTypes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mAcceptWrappedTypes:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2279
    return-object v0
.end method

.method protected toStringForDump()Ljava/lang/String;
    .locals 2

    .line 2304
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ImSession [conversationId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mChatData:Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->getConversationId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", chatType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mChatData:Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;

    .line 2305
    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->getChatType()Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mParticipants="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mParticipants:Ljava/util/HashMap;

    .line 2306
    invoke-static {v1}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mChatData:Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;

    .line 2307
    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->getState()Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$State;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mClosedReason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mClosedReason:Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionClosedReason;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2304
    return-object v0
.end method

.method protected transitionToProperState()V
    .locals 5

    .line 2232
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 2234
    .local v0, "list":Ljava/util/Set;, "Ljava/util/Set<Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo$ImSessionState;>;"
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mImSessionInfoList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo;

    .line 2235
    .local v2, "info":Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "transitionToProperState : ImSessionInfo = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->logi(Ljava/lang/String;)V

    .line 2236
    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo;->isSnFSession()Z

    move-result v3

    if-nez v3, :cond_0

    .line 2237
    iget-object v3, v2, Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo;->mState:Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo$ImSessionState;

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2239
    .end local v2    # "info":Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo;
    :cond_0
    goto :goto_0

    .line 2241
    :cond_1
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2242
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mClosedState:Lcom/sec/internal/ims/servicemodules/im/ImSessionClosedState;

    .local v1, "state":Lcom/sec/internal/helper/IState;
    goto :goto_2

    .line 2243
    .end local v1    # "state":Lcom/sec/internal/helper/IState;
    :cond_2
    sget-object v1, Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo$ImSessionState;->ESTABLISHED:Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo$ImSessionState;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2244
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mEstablishedState:Lcom/sec/internal/ims/servicemodules/im/ImSessionEstablishedState;

    .restart local v1    # "state":Lcom/sec/internal/helper/IState;
    goto :goto_2

    .line 2245
    .end local v1    # "state":Lcom/sec/internal/helper/IState;
    :cond_3
    sget-object v1, Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo$ImSessionState;->ACCEPTING:Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo$ImSessionState;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    sget-object v1, Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo$ImSessionState;->INITIAL:Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo$ImSessionState;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    sget-object v1, Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo$ImSessionState;->STARTED:Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo$ImSessionState;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    sget-object v1, Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo$ImSessionState;->STARTING:Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo$ImSessionState;

    .line 2246
    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_1

    .line 2248
    :cond_4
    sget-object v1, Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo$ImSessionState;->CLOSING:Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo$ImSessionState;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 2249
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mClosingState:Lcom/sec/internal/ims/servicemodules/im/ImSessionClosingState;

    .restart local v1    # "state":Lcom/sec/internal/helper/IState;
    goto :goto_2

    .line 2251
    .end local v1    # "state":Lcom/sec/internal/helper/IState;
    :cond_5
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mClosedState:Lcom/sec/internal/ims/servicemodules/im/ImSessionClosedState;

    .restart local v1    # "state":Lcom/sec/internal/helper/IState;
    goto :goto_2

    .line 2247
    .end local v1    # "state":Lcom/sec/internal/helper/IState;
    :cond_6
    :goto_1
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mStartingState:Lcom/sec/internal/ims/servicemodules/im/ImSessionStartingState;

    .line 2254
    .restart local v1    # "state":Lcom/sec/internal/helper/IState;
    :goto_2
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getCurrentState()Lcom/sec/internal/helper/IState;

    move-result-object v2

    if-eq v1, v2, :cond_7

    .line 2255
    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->transitionTo(Lcom/sec/internal/helper/IState;)V

    .line 2257
    :cond_7
    return-void
.end method

.method protected transitionToStartingState()V
    .locals 1

    .line 2628
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mStartingState:Lcom/sec/internal/ims/servicemodules/im/ImSessionStartingState;

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->transitionTo(Lcom/sec/internal/helper/IState;)V

    .line 2629
    return-void
.end method

.method protected updateChatState(Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$State;)V
    .locals 1
    .param p1, "state"    # Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$State;

    .line 347
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mChatData:Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;

    invoke-virtual {v0, p1}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->updateState(Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$State;)V

    .line 348
    return-void
.end method

.method protected updateChatType(Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;)V
    .locals 1
    .param p1, "chatType"    # Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;

    .line 435
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mChatData:Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;

    invoke-virtual {v0, p1}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->updateChatType(Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;)V

    .line 436
    return-void
.end method

.method protected updateIconData(Lcom/sec/internal/constants/ims/servicemodules/im/ImIconData;)V
    .locals 1
    .param p1, "iconData"    # Lcom/sec/internal/constants/ims/servicemodules/im/ImIconData;

    .line 695
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mChatData:Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;

    invoke-virtual {v0, p1}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->updateIconData(Lcom/sec/internal/constants/ims/servicemodules/im/ImIconData;)V

    .line 696
    return-void
.end method

.method protected updateIsChatbotRole(Z)V
    .locals 2
    .param p1, "isChatbotRole"    # Z

    .line 409
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getRemoteUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v0

    .line 410
    .local v0, "uri":Lcom/sec/ims/util/ImsUri;
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mChatData:Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->isChatbotRole()Z

    move-result v1

    if-eq p1, v1, :cond_1

    if-eqz v0, :cond_1

    .line 411
    if-eqz p1, :cond_0

    .line 412
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getInstance()Lcom/sec/internal/ims/servicemodules/im/ImCache;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->addToChatbotRoleUris(Lcom/sec/ims/util/ImsUri;)V

    goto :goto_0

    .line 414
    :cond_0
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getInstance()Lcom/sec/internal/ims/servicemodules/im/ImCache;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->removeFromChatbotRoleUris(Lcom/sec/ims/util/ImsUri;)V

    .line 417
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mChatData:Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;

    invoke-virtual {v1, p1}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->updateIsChatbotRole(Z)V

    .line 418
    return-void
.end method

.method protected updateNetworkForPendingMessage(Landroid/net/Network;Landroid/net/Network;)V
    .locals 4
    .param p1, "network"    # Landroid/net/Network;
    .param p2, "ftNetwork"    # Landroid/net/Network;

    .line 1716
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mGetter:Lcom/sec/internal/ims/servicemodules/im/interfaces/IGetter;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mChatId:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/interfaces/IGetter;->getAllPendingMessages(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 1717
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Lcom/sec/internal/ims/servicemodules/im/MessageBase;>;"
    sget-object v1, Lcom/sec/internal/ims/servicemodules/im/ImSession;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateNetworkForPendingMessage: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " pended message(s) in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mChatId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " with "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1718
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/servicemodules/im/MessageBase;

    .line 1719
    .local v2, "m":Lcom/sec/internal/ims/servicemodules/im/MessageBase;
    instance-of v3, v2, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage;

    if-nez v3, :cond_1

    instance-of v3, v2, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage;

    if-eqz v3, :cond_0

    goto :goto_1

    .line 1722
    :cond_0
    invoke-virtual {v2, p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->setNetwork(Landroid/net/Network;)V

    goto :goto_2

    .line 1720
    :cond_1
    :goto_1
    invoke-virtual {v2, p2}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->setNetwork(Landroid/net/Network;)V

    .line 1724
    .end local v2    # "m":Lcom/sec/internal/ims/servicemodules/im/MessageBase;
    :goto_2
    goto :goto_0

    .line 1725
    :cond_2
    return-void
.end method

.method protected updateParticipantAlias(Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;)V
    .locals 3
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "participant"    # Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;

    .line 777
    if-nez p2, :cond_0

    .line 778
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "updateParticipantAlias, skipping update"

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 779
    return-void

    .line 782
    :cond_0
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo$SessionType;->NORMAL:Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo$SessionType;

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->hasImSessionInfo(Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo$SessionType;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 783
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "updateParticipantAlias, SnF session and alias empty - do not update"

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 784
    return-void

    .line 787
    :cond_1
    invoke-virtual {p2}, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;->getUserAlias()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p2}, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;->getUserAlias()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    .line 794
    :cond_2
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "updateParticipantAlias, participant alias is up to date"

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 788
    :cond_3
    :goto_0
    invoke-virtual {p2, p1}, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;->setUserAlias(Ljava/lang/String;)V

    .line 789
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 790
    .local v0, "updatedParticipants":Ljava/util/List;, "Ljava/util/List<Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;>;"
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 791
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mListener:Lcom/sec/internal/ims/servicemodules/im/listener/ImSessionListener;

    invoke-interface {v1, p0, v0}, Lcom/sec/internal/ims/servicemodules/im/listener/ImSessionListener;->onParticipantsUpdated(Lcom/sec/internal/ims/servicemodules/im/ImSession;Ljava/util/Collection;)V

    .line 792
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mListener:Lcom/sec/internal/ims/servicemodules/im/listener/ImSessionListener;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mChatId:Ljava/lang/String;

    invoke-interface {v1, v2, p2}, Lcom/sec/internal/ims/servicemodules/im/listener/ImSessionListener;->onParticipantAliasUpdated(Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;)V

    .line 793
    .end local v0    # "updatedParticipants":Ljava/util/List;, "Ljava/util/List<Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;>;"
    nop

    .line 796
    :goto_1
    return-void
.end method

.method protected updateParticipantsStatus(Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;)V
    .locals 4
    .param p1, "status"    # Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;

    .line 758
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 759
    .local v0, "updatedParticipants":Ljava/util/List;, "Ljava/util/List<Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;>;"
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mParticipants:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;

    .line 760
    .local v2, "p":Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;
    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;->getStatus()Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;

    move-result-object v3

    if-eq v3, p1, :cond_0

    .line 761
    invoke-virtual {v2, p1}, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;->setStatus(Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;)V

    .line 762
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 764
    .end local v2    # "p":Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;
    :cond_0
    goto :goto_0

    .line 765
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 766
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mListener:Lcom/sec/internal/ims/servicemodules/im/listener/ImSessionListener;

    invoke-interface {v1, p0, v0}, Lcom/sec/internal/ims/servicemodules/im/listener/ImSessionListener;->onParticipantsUpdated(Lcom/sec/internal/ims/servicemodules/im/ImSession;Ljava/util/Collection;)V

    .line 768
    :cond_2
    return-void
.end method

.method protected updateSessionInfo(Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo;)V
    .locals 2
    .param p1, "info"    # Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo;

    .line 255
    iget-object v0, p1, Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo;->mRawHandle:Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->setRawHandle(Ljava/lang/Object;)V

    .line 256
    iget-object v0, p1, Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo;->mContributionId:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->setContributionId(Ljava/lang/String;)V

    .line 257
    iget-object v0, p1, Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo;->mConversationId:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->setConversationId(Ljava/lang/String;)V

    .line 258
    iget-object v0, p1, Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo;->mInReplyToContributionId:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mInReplyToContributionId:Ljava/lang/String;

    .line 259
    iget-object v0, p1, Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo;->mSdpContentType:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mSdpContentType:Ljava/lang/String;

    .line 260
    iget-object v0, p1, Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo;->mSessionUri:Lcom/sec/ims/util/ImsUri;

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->setSessionUri(Lcom/sec/ims/util/ImsUri;)V

    .line 261
    iget-object v0, p1, Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo;->mDirection:Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->setDirection(Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;)V

    .line 262
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mChatData:Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;->UPDATED:Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;

    invoke-virtual {v0, v1}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->triggerObservers(Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;)V

    .line 263
    return-void
.end method

.method protected updateSubjectData(Lcom/sec/internal/constants/ims/servicemodules/im/ImSubjectData;)V
    .locals 1
    .param p1, "subjectData"    # Lcom/sec/internal/constants/ims/servicemodules/im/ImSubjectData;

    .line 691
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mChatData:Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;

    invoke-virtual {v0, p1}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->updateSubjectData(Lcom/sec/internal/constants/ims/servicemodules/im/ImSubjectData;)V

    .line 692
    return-void
.end method

.method protected updateUriGenerator(Lcom/sec/internal/ims/util/UriGenerator;)V
    .locals 0
    .param p1, "uriGenerator"    # Lcom/sec/internal/ims/util/UriGenerator;

    .line 2355
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mUriGenerator:Lcom/sec/internal/ims/util/UriGenerator;

    .line 2356
    return-void
.end method
