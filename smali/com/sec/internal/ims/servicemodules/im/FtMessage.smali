.class public abstract Lcom/sec/internal/ims/servicemodules/im/FtMessage;
.super Lcom/sec/internal/ims/servicemodules/im/MessageBase;
.source "FtMessage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/internal/ims/servicemodules/im/FtMessage$FtStateMachine;,
        Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;
    }
.end annotation


# static fields
.field public static final DEFAULT_PLAYING_LENGTH:I = 0x0

.field protected static final DEFAULT_TRANSFER_TIMEOUT:J = 0x493e0L

.field protected static final DEFAULT_WAKE_LOCK_TIMEOUT:J = 0x2710L

.field protected static final EVENT_ACCEPT_TRANSFER:I = 0x4

.field protected static final EVENT_ACCEPT_TRANSFER_DONE:I = 0x5

.field protected static final EVENT_ATTACH_FILE:I = 0x1

.field protected static final EVENT_ATTACH_FILE_ON_CREATE_THUMBNAIL:I = 0x13

.field protected static final EVENT_ATTACH_SLM_FILE:I = 0x10

.field protected static final EVENT_AUTOACCEPT_RESUMING:I = 0xf

.field protected static final EVENT_AUTO_RESUME_FILE_TIMER_TIMEOUT:I = 0x15

.field protected static final EVENT_CANCEL_TRANSFER:I = 0x8

.field protected static final EVENT_CANCEL_TRANSFER_DONE:I = 0x9

.field protected static final EVENT_DELAY_CANCEL_TRANSFER:I = 0x34

.field protected static final EVENT_HANDLE_FILE_RESIZE_RESPONSE:I = 0x14

.field protected static final EVENT_QUEUED_FILE:I = 0xe

.field protected static final EVENT_RECEIVE_TRANSFER:I = 0xa

.field protected static final EVENT_REJECT_TRANSFER:I = 0x6

.field protected static final EVENT_REJECT_TRANSFER_DONE:I = 0x7

.field protected static final EVENT_RETRY_SEND_FILE:I = 0x12

.field protected static final EVENT_SEND_DELIVERED_NOTIFICATION_DONE:I = 0xd

.field protected static final EVENT_SEND_FILE:I = 0xb

.field protected static final EVENT_SEND_FILE_DONE:I = 0x2

.field protected static final EVENT_SEND_FILE_REQUEST_TIMEOUT:I = 0x11

.field protected static final EVENT_SEND_FILE_SESSION_HANDLE:I = 0x16

.field protected static final EVENT_SEND_SLM_FILE_DONE:I = 0xc

.field protected static final EVENT_SET_UP_NETWORK_FAILURE_FOR_FT:I = 0x33

.field protected static final EVENT_SET_UP_NETWORK_SUCCESS_FOR_FT:I = 0x32

.field protected static final EVENT_TRANSFER_PROGRESS:I = 0x3

.field protected static final EVENT_TRANSFER_TIMER_TIMEOUT:I = 0x17

.field private static final FTHTTP_POOL_SIZE:I = 0x3

.field private static final KEEP_ALIVE:I = 0x1

.field private static final LOG_TAG:Ljava/lang/String;

.field private static final MAXIMUM_POOL_SIZE:I = 0x3

.field protected static final MAX_FILE_NAME_LEN:I = 0x80

.field protected static final MAX_RETRY_COUNT:I = 0x3

.field protected static final SET_UP_NETWORK_TIMEOUT:I = 0x3a98

.field private static final sCancelReasonTranslator:Lcom/sec/internal/helper/translate/MappingTranslator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sec/internal/helper/translate/MappingTranslator<",
            "Lcom/sec/internal/constants/ims/servicemodules/im/ImError;",
            "Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;",
            ">;"
        }
    .end annotation
.end field

.field protected static final sFtHttpThreadPool:Ljava/util/concurrent/Executor;

.field private static final sPoolWorkQueue:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private static final sThreadFactory:Ljava/util/concurrent/ThreadFactory;

.field protected static final sTidGenerator:Lcom/sec/internal/ims/servicemodules/im/util/TidGenerator;


# instance fields
.field protected FT_SIZE_MARGIN:J

.field protected MAX_SIZE_DOWNLOAD_THUMBNAIL:J

.field protected MAX_SIZE_THUMBNAIL:J

.field protected mCancelReason:Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

.field protected mDeaccentedFilePath:Ljava/lang/String;

.field protected mErrorNotificationId:Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$ErrorNotificationId;

.field protected mFileBrandedUrl:Ljava/lang/String;

.field protected mFileDataUrl:Ljava/lang/String;

.field protected mFileDisposition:Lcom/sec/internal/constants/ims/servicemodules/im/FileDisposition;

.field protected mFileExpire:Ljava/lang/String;

.field protected mFileFingerPrint:Ljava/lang/String;

.field protected mFileName:Ljava/lang/String;

.field protected mFilePath:Ljava/lang/String;

.field protected mFileSize:J

.field protected mFileTransferId:Ljava/lang/String;

.field protected mFtCompleteCallback:Landroid/os/Message;

.field protected final mInReplyToContributionId:Ljava/lang/String;

.field protected mIsAutoDownload:Z

.field protected mIsBootup:Z

.field protected mIsConferenceUriChanged:Z

.field protected mIsGroupChat:Z

.field protected mIsNetworkConnected:Z

.field protected mIsNetworkRequested:Z

.field protected mIsResizable:Z

.field protected mIsResuming:Z

.field protected mIsWifiUsed:Z

.field protected mListener:Lcom/sec/internal/ims/servicemodules/im/listener/FtMessageListener;

.field private mNetworkStateCallback:Landroid/net/ConnectivityManager$NetworkCallback;

.field protected mPlayingLength:I

.field protected mRawHandle:Ljava/lang/Object;

.field protected mRejectReason:Lcom/sec/internal/constants/ims/servicemodules/im/reason/FtRejectReason;

.field protected mResumableOptionCode:I

.field protected mRetryCount:I

.field protected mStateId:I

.field protected mStateMachine:Lcom/sec/internal/ims/servicemodules/im/FtMessage$FtStateMachine;

.field protected mThumbnailContentType:Ljava/lang/String;

.field protected mThumbnailPath:Ljava/lang/String;

.field protected mTimeDuration:I

.field protected mTransferredBytes:J

.field protected final mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 118
    new-instance v0, Lcom/sec/internal/ims/servicemodules/im/util/TidGenerator;

    invoke-direct {v0}, Lcom/sec/internal/ims/servicemodules/im/util/TidGenerator;-><init>()V

    sput-object v0, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->sTidGenerator:Lcom/sec/internal/ims/servicemodules/im/util/TidGenerator;

    .line 120
    const-class v0, Lcom/sec/internal/ims/servicemodules/im/FtMessage;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->LOG_TAG:Ljava/lang/String;

    .line 124
    new-instance v0, Lcom/sec/internal/ims/servicemodules/im/FtMessage$1;

    invoke-direct {v0}, Lcom/sec/internal/ims/servicemodules/im/FtMessage$1;-><init>()V

    sput-object v0, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->sThreadFactory:Ljava/util/concurrent/ThreadFactory;

    .line 131
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    sput-object v0, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->sPoolWorkQueue:Ljava/util/concurrent/BlockingQueue;

    .line 132
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v7, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v8, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->sPoolWorkQueue:Ljava/util/concurrent/BlockingQueue;

    sget-object v9, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->sThreadFactory:Ljava/util/concurrent/ThreadFactory;

    const/4 v3, 0x3

    const/4 v4, 0x3

    const-wide/16 v5, 0x1

    move-object v2, v0

    invoke-direct/range {v2 .. v9}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    sput-object v0, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->sFtHttpThreadPool:Ljava/util/concurrent/Executor;

    .line 135
    new-instance v0, Lcom/sec/internal/helper/translate/MappingTranslator$Builder;

    invoke-direct {v0}, Lcom/sec/internal/helper/translate/MappingTranslator$Builder;-><init>()V

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->REMOTE_PARTY_CANCELED:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;->CANCELED_BY_REMOTE:Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    .line 137
    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/helper/translate/MappingTranslator$Builder;->map(Ljava/lang/Object;Ljava/lang/Object;)Lcom/sec/internal/helper/translate/MappingTranslator$Builder;

    move-result-object v0

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->REMOTE_PARTY_REJECTED:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;->REJECTED_BY_REMOTE:Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    .line 138
    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/helper/translate/MappingTranslator$Builder;->map(Ljava/lang/Object;Ljava/lang/Object;)Lcom/sec/internal/helper/translate/MappingTranslator$Builder;

    move-result-object v0

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->REMOTE_PARTY_DECLINED:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;->REJECTED_BY_REMOTE:Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    .line 139
    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/helper/translate/MappingTranslator$Builder;->map(Ljava/lang/Object;Ljava/lang/Object;)Lcom/sec/internal/helper/translate/MappingTranslator$Builder;

    move-result-object v0

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->SESSION_TIMED_OUT:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;->TIME_OUT:Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    .line 140
    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/helper/translate/MappingTranslator$Builder;->map(Ljava/lang/Object;Ljava/lang/Object;)Lcom/sec/internal/helper/translate/MappingTranslator$Builder;

    move-result-object v0

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->ENGINE_ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;->UNKNOWN:Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    .line 141
    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/helper/translate/MappingTranslator$Builder;->map(Ljava/lang/Object;Ljava/lang/Object;)Lcom/sec/internal/helper/translate/MappingTranslator$Builder;

    move-result-object v0

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->NETWORK_ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;->ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    .line 142
    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/helper/translate/MappingTranslator$Builder;->map(Ljava/lang/Object;Ljava/lang/Object;)Lcom/sec/internal/helper/translate/MappingTranslator$Builder;

    move-result-object v0

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->NORMAL_RELEASE:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;->ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    .line 143
    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/helper/translate/MappingTranslator$Builder;->map(Ljava/lang/Object;Ljava/lang/Object;)Lcom/sec/internal/helper/translate/MappingTranslator$Builder;

    move-result-object v0

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->SERVICE_UNAVAILABLE:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;->ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    .line 144
    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/helper/translate/MappingTranslator$Builder;->map(Ljava/lang/Object;Ljava/lang/Object;)Lcom/sec/internal/helper/translate/MappingTranslator$Builder;

    move-result-object v0

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->CONNECTION_RELEASED:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;->CONNECTION_RELEASED:Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    .line 145
    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/helper/translate/MappingTranslator$Builder;->map(Ljava/lang/Object;Ljava/lang/Object;)Lcom/sec/internal/helper/translate/MappingTranslator$Builder;

    move-result-object v0

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->FORBIDDEN_NO_WARNING_HEADER:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;->NOT_AUTHORIZED:Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    .line 146
    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/helper/translate/MappingTranslator$Builder;->map(Ljava/lang/Object;Ljava/lang/Object;)Lcom/sec/internal/helper/translate/MappingTranslator$Builder;

    move-result-object v0

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->REMOTE_TEMPORARILY_UNAVAILABLE:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;->REMOTE_TEMPORARILY_UNAVAILABLE:Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    .line 147
    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/helper/translate/MappingTranslator$Builder;->map(Ljava/lang/Object;Ljava/lang/Object;)Lcom/sec/internal/helper/translate/MappingTranslator$Builder;

    move-result-object v0

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->REMOTE_USER_INVALID:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;->REMOTE_USER_INVALID:Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    .line 148
    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/helper/translate/MappingTranslator$Builder;->map(Ljava/lang/Object;Ljava/lang/Object;)Lcom/sec/internal/helper/translate/MappingTranslator$Builder;

    move-result-object v0

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->NO_RESPONSE:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;->NO_RESPONSE:Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    .line 149
    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/helper/translate/MappingTranslator$Builder;->map(Ljava/lang/Object;Ljava/lang/Object;)Lcom/sec/internal/helper/translate/MappingTranslator$Builder;

    move-result-object v0

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->CANCELED_BY_LOCAL:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;->CANCELED_BY_USER:Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    .line 150
    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/helper/translate/MappingTranslator$Builder;->map(Ljava/lang/Object;Ljava/lang/Object;)Lcom/sec/internal/helper/translate/MappingTranslator$Builder;

    move-result-object v0

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->REMOTE_PARTY_CLOSED:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;->CANCELED_BY_REMOTE:Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    .line 151
    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/helper/translate/MappingTranslator$Builder;->map(Ljava/lang/Object;Ljava/lang/Object;)Lcom/sec/internal/helper/translate/MappingTranslator$Builder;

    move-result-object v0

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->FORBIDDEN_SERVICE_NOT_AUTHORISED:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;->FORBIDDEN_NO_RETRY_FALLBACK:Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    .line 152
    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/helper/translate/MappingTranslator$Builder;->map(Ljava/lang/Object;Ljava/lang/Object;)Lcom/sec/internal/helper/translate/MappingTranslator$Builder;

    move-result-object v0

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->FORBIDDEN_VERSION_NOT_SUPPORTED:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;->FORBIDDEN_NO_RETRY_FALLBACK:Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    .line 153
    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/helper/translate/MappingTranslator$Builder;->map(Ljava/lang/Object;Ljava/lang/Object;)Lcom/sec/internal/helper/translate/MappingTranslator$Builder;

    move-result-object v0

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->CONTENT_REACHED_DOWNSIZE:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;->CONTENT_REACHED_DOWNSIZE:Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    .line 154
    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/helper/translate/MappingTranslator$Builder;->map(Ljava/lang/Object;Ljava/lang/Object;)Lcom/sec/internal/helper/translate/MappingTranslator$Builder;

    move-result-object v0

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->INVALID_REQUEST:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;->INVALID_REQUEST:Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    .line 155
    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/helper/translate/MappingTranslator$Builder;->map(Ljava/lang/Object;Ljava/lang/Object;)Lcom/sec/internal/helper/translate/MappingTranslator$Builder;

    move-result-object v0

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->DEVICE_UNREGISTERED:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;->DEVICE_UNREGISTERED:Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    .line 156
    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/helper/translate/MappingTranslator$Builder;->map(Ljava/lang/Object;Ljava/lang/Object;)Lcom/sec/internal/helper/translate/MappingTranslator$Builder;

    move-result-object v0

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->MSRP_REQUEST_UNINTELLIGIBLE:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;->ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    .line 157
    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/helper/translate/MappingTranslator$Builder;->map(Ljava/lang/Object;Ljava/lang/Object;)Lcom/sec/internal/helper/translate/MappingTranslator$Builder;

    move-result-object v0

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->MSRP_TRANSACTION_TIMED_OUT:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;->ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    .line 158
    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/helper/translate/MappingTranslator$Builder;->map(Ljava/lang/Object;Ljava/lang/Object;)Lcom/sec/internal/helper/translate/MappingTranslator$Builder;

    move-result-object v0

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->MSRP_ACTION_NOT_ALLOWED:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;->MSRP_SESSION_ERROR_NO_RESUME:Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    .line 159
    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/helper/translate/MappingTranslator$Builder;->map(Ljava/lang/Object;Ljava/lang/Object;)Lcom/sec/internal/helper/translate/MappingTranslator$Builder;

    move-result-object v0

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->MSRP_UNKNOWN_CONTENT_TYPE:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;->MSRP_SESSION_ERROR_NO_RESUME:Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    .line 160
    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/helper/translate/MappingTranslator$Builder;->map(Ljava/lang/Object;Ljava/lang/Object;)Lcom/sec/internal/helper/translate/MappingTranslator$Builder;

    move-result-object v0

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->MSRP_SESSION_DOES_NOT_EXIST:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;->ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    .line 161
    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/helper/translate/MappingTranslator$Builder;->map(Ljava/lang/Object;Ljava/lang/Object;)Lcom/sec/internal/helper/translate/MappingTranslator$Builder;

    move-result-object v0

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->MSRP_SESSION_ON_OTHER_CONNECTION:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;->MSRP_SESSION_ERROR_NO_RESUME:Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    .line 162
    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/helper/translate/MappingTranslator$Builder;->map(Ljava/lang/Object;Ljava/lang/Object;)Lcom/sec/internal/helper/translate/MappingTranslator$Builder;

    move-result-object v0

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->MSRP_PARAMETERS_OUT_OF_BOUND:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;->REMOTE_TEMPORARILY_UNAVAILABLE:Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    .line 163
    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/helper/translate/MappingTranslator$Builder;->map(Ljava/lang/Object;Ljava/lang/Object;)Lcom/sec/internal/helper/translate/MappingTranslator$Builder;

    move-result-object v0

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->MSRP_UNKNOWN_METHOD:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;->REMOTE_TEMPORARILY_UNAVAILABLE:Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    .line 164
    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/helper/translate/MappingTranslator$Builder;->map(Ljava/lang/Object;Ljava/lang/Object;)Lcom/sec/internal/helper/translate/MappingTranslator$Builder;

    move-result-object v0

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->METHOD_NOT_ALLOWED:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;->REMOTE_TEMPORARILY_UNAVAILABLE:Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    .line 165
    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/helper/translate/MappingTranslator$Builder;->map(Ljava/lang/Object;Ljava/lang/Object;)Lcom/sec/internal/helper/translate/MappingTranslator$Builder;

    move-result-object v0

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->MSRP_DO_NOT_SEND_THIS_MESSAGE:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;->MSRP_SESSION_ERROR_NO_RESUME:Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    .line 166
    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/helper/translate/MappingTranslator$Builder;->map(Ljava/lang/Object;Ljava/lang/Object;)Lcom/sec/internal/helper/translate/MappingTranslator$Builder;

    move-result-object v0

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->DEDICATED_BEARER_ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;->ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    .line 167
    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/helper/translate/MappingTranslator$Builder;->map(Ljava/lang/Object;Ljava/lang/Object;)Lcom/sec/internal/helper/translate/MappingTranslator$Builder;

    move-result-object v0

    .line 168
    invoke-virtual {v0}, Lcom/sec/internal/helper/translate/MappingTranslator$Builder;->buildTranslator()Lcom/sec/internal/helper/translate/MappingTranslator;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->sCancelReasonTranslator:Lcom/sec/internal/helper/translate/MappingTranslator;

    .line 135
    return-void
.end method

.method protected constructor <init>(Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder<",
            "*>;)V"
        }
    .end annotation

    .line 238
    .local p1, "builder":Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;, "Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder<*>;"
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;-><init>(Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;)V

    .line 172
    const-wide/16 v0, 0x2400

    iput-wide v0, p0, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->MAX_SIZE_THUMBNAIL:J

    .line 174
    const-wide/32 v0, 0x100000

    iput-wide v0, p0, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->MAX_SIZE_DOWNLOAD_THUMBNAIL:J

    .line 176
    const-wide/16 v0, 0x2800

    iput-wide v0, p0, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->FT_SIZE_MARGIN:J

    .line 190
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->mPlayingLength:I

    .line 218
    sget-object v1, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$ErrorNotificationId;->NONE:Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$ErrorNotificationId;

    iput-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->mErrorNotificationId:Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$ErrorNotificationId;

    .line 223
    new-instance v1, Lcom/sec/internal/ims/servicemodules/im/FtMessage$2;

    invoke-direct {v1, p0}, Lcom/sec/internal/ims/servicemodules/im/FtMessage$2;-><init>(Lcom/sec/internal/ims/servicemodules/im/FtMessage;)V

    iput-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->mNetworkStateCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 240
    invoke-static {p1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;->access$200(Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;)Lcom/sec/internal/ims/servicemodules/im/listener/FtMessageListener;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/internal/helper/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 241
    invoke-static {p1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;->access$200(Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;)Lcom/sec/internal/ims/servicemodules/im/listener/FtMessageListener;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->mListener:Lcom/sec/internal/ims/servicemodules/im/listener/FtMessageListener;

    .line 242
    invoke-static {p1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;->access$300(Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->mFilePath:Ljava/lang/String;

    .line 243
    invoke-static {p1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;->access$400(Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->mFileName:Ljava/lang/String;

    .line 244
    invoke-static {p1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;->access$300(Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->deAccent(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->mDeaccentedFilePath:Ljava/lang/String;

    .line 245
    invoke-static {p1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;->access$500(Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->mFileSize:J

    .line 246
    invoke-static {p1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;->access$600(Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;)Lcom/sec/internal/constants/ims/servicemodules/im/FileDisposition;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->mFileDisposition:Lcom/sec/internal/constants/ims/servicemodules/im/FileDisposition;

    .line 247
    invoke-static {p1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;->access$700(Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;)I

    move-result v1

    iput v1, p0, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->mPlayingLength:I

    .line 248
    invoke-static {p1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;->access$800(Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->mThumbnailPath:Ljava/lang/String;

    .line 249
    invoke-static {p1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;->access$900(Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;)I

    move-result v1

    iput v1, p0, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->mTimeDuration:I

    .line 250
    invoke-static {p1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;->access$1000(Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->mTransferredBytes:J

    .line 251
    invoke-static {p1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;->access$1100(Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->mInReplyToContributionId:Ljava/lang/String;

    .line 252
    invoke-static {p1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;->access$1200(Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->mFileTransferId:Ljava/lang/String;

    .line 253
    invoke-static {p1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;->access$1300(Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;)I

    move-result v1

    iput v1, p0, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->mResumableOptionCode:I

    .line 254
    invoke-static {p1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;->access$1400(Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;)I

    move-result v1

    invoke-static {v1}, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;->valueOf(I)Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->mCancelReason:Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    .line 255
    invoke-static {p1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;->access$1500(Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->mIsResizable:Z

    .line 256
    invoke-static {p1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;->access$1600(Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->mIsGroupChat:Z

    .line 258
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v3, "power"

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    .line 259
    .local v1, "pm":Landroid/os/PowerManager;
    const-class v3, Lcom/sec/internal/ims/servicemodules/im/FtMessage;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 260
    invoke-virtual {v2, v0}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 262
    invoke-static {p1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;->access$1700(Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;)Landroid/os/Looper;

    move-result-object v0

    invoke-static {p1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;->access$1800(Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;)I

    move-result v2

    invoke-virtual {p0, v0, v2}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->initStateMachine(Landroid/os/Looper;I)V

    .line 263
    const-string v0, ""

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->mFileFingerPrint:Ljava/lang/String;

    .line 264
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 75
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/internal/ims/servicemodules/im/FtMessage;Landroid/net/Network;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/internal/ims/servicemodules/im/FtMessage;
    .param p1, "x1"    # Landroid/net/Network;
    .param p2, "x2"    # Z

    .line 75
    invoke-direct {p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->onConnectionChanged(Landroid/net/Network;Z)V

    return-void
.end method

.method protected static checkAvailableStorage(Ljava/lang/String;J)Z
    .locals 7
    .param p0, "dir"    # Ljava/lang/String;
    .param p1, "reqSize"    # J

    .line 276
    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Landroid/os/StatFs;

    invoke-direct {v1, p0}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 280
    .local v1, "stat":Landroid/os/StatFs;
    nop

    .line 281
    invoke-virtual {v1}, Landroid/os/StatFs;->getAvailableBytes()J

    move-result-wide v2

    .line 282
    .local v2, "sdAvailSize":J
    sget-object v4, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "checkAvailableStorage: reqSize="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, " available="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    cmp-long v4, p1, v2

    if-gtz v4, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    .line 277
    .end local v1    # "stat":Landroid/os/StatFs;
    .end local v2    # "sdAvailSize":J
    :catch_0
    move-exception v1

    .line 278
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .line 279
    return v0
.end method

.method public static deAccent(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 5
    .param p0, "input"    # Ljava/lang/String;
    .param p1, "specialToUnderscore"    # Z

    .line 296
    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 300
    :cond_0
    sget-object v0, Ljava/text/Normalizer$Form;->NFD:Ljava/text/Normalizer$Form;

    invoke-static {p0, v0}, Ljava/text/Normalizer;->normalize(Ljava/lang/CharSequence;Ljava/text/Normalizer$Form;)Ljava/lang/String;

    move-result-object v0

    .line 301
    .local v0, "result":Ljava/lang/String;
    const-string v1, "\\p{InCombiningDiacriticalMarks}+"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 303
    .local v1, "pattern":Ljava/util/regex/Pattern;
    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 304
    if-eqz p1, :cond_1

    .line 305
    sget-object v2, Ljava/text/Normalizer$Form;->NFD:Ljava/text/Normalizer$Form;

    invoke-static {v0, v2}, Ljava/text/Normalizer;->normalize(Ljava/lang/CharSequence;Ljava/text/Normalizer$Form;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "[^\\p{ASCII}]"

    const-string v4, "_"

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 307
    const-string v2, "`"

    invoke-virtual {v0, v2, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 310
    :cond_1
    return-object v0

    .line 297
    .end local v0    # "result":Ljava/lang/String;
    .end local v1    # "pattern":Ljava/util/regex/Pattern;
    :cond_2
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getType(Ljava/lang/String;)Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;
    .locals 1
    .param p0, "contentType"    # Ljava/lang/String;

    .line 288
    const-string v0, "application/vnd.gsma.rcspushlocation+xml"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 289
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;->LOCATION:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;

    return-object v0

    .line 292
    :cond_0
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;->MULTIMEDIA:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;

    return-object v0
.end method

.method private onConnectionChanged(Landroid/net/Network;Z)V
    .locals 3
    .param p1, "network"    # Landroid/net/Network;
    .param p2, "isAvailable"    # Z

    .line 798
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onConnectionChanged: network = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", available = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 799
    if-eqz p2, :cond_1

    .line 800
    iget-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->mIsNetworkRequested:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->mIsNetworkConnected:Z

    if-nez v0, :cond_2

    .line 801
    if-eqz p1, :cond_0

    .line 802
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->setNetwork(Landroid/net/Network;)V

    .line 803
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->mIsNetworkConnected:Z

    .line 804
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->mStateMachine:Lcom/sec/internal/ims/servicemodules/im/FtMessage$FtStateMachine;

    const/16 v1, 0x32

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage$FtStateMachine;->sendMessage(I)V

    goto :goto_0

    .line 806
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->mStateMachine:Lcom/sec/internal/ims/servicemodules/im/FtMessage$FtStateMachine;

    const/16 v1, 0x33

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage$FtStateMachine;->sendMessage(I)V

    goto :goto_0

    .line 810
    :cond_1
    iget-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->mIsNetworkRequested:Z

    if-eqz v0, :cond_2

    .line 811
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->setNetwork(Landroid/net/Network;)V

    .line 812
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->mIsNetworkConnected:Z

    .line 815
    :cond_2
    :goto_0
    return-void
.end method

.method protected static translateToCancelReason(Lcom/sec/internal/constants/ims/servicemodules/im/ImError;)Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;
    .locals 1
    .param p0, "reason"    # Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    .line 267
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->sCancelReasonTranslator:Lcom/sec/internal/helper/translate/MappingTranslator;

    invoke-virtual {v0, p0}, Lcom/sec/internal/helper/translate/MappingTranslator;->isTranslationDefined(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 268
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->sCancelReasonTranslator:Lcom/sec/internal/helper/translate/MappingTranslator;

    invoke-virtual {v0, p0}, Lcom/sec/internal/helper/translate/MappingTranslator;->translate(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    return-object v0

    .line 270
    :cond_0
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;->UNKNOWN:Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    return-object v0
.end method


# virtual methods
.method public acceptTransfer()V
    .locals 2

    .line 361
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->mStateMachine:Lcom/sec/internal/ims/servicemodules/im/FtMessage$FtStateMachine;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage$FtStateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage$FtStateMachine;->sendMessage(Landroid/os/Message;)V

    .line 362
    return-void
.end method

.method protected acquireNetworkForFT(I)V
    .locals 6
    .param p1, "networkCapability"    # I

    .line 771
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->LOG_TAG:Ljava/lang/String;

    const-string v1, "acquireNetworkForFT"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 772
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->mIsNetworkRequested:Z

    .line 774
    const/16 v0, 0x33

    :try_start_0
    new-instance v1, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v1}, Landroid/net/NetworkRequest$Builder;-><init>()V

    const/4 v2, 0x0

    .line 775
    invoke-virtual {v1, v2}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v1

    .line 776
    invoke-virtual {v1, p1}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v1

    .line 777
    invoke-virtual {v1}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v1

    .line 778
    .local v1, "mNetworkRequest":Landroid/net/NetworkRequest;
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "connectivity"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager;

    .line 779
    .local v2, "mConnectivityManager":Landroid/net/ConnectivityManager;
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->mNetworkStateCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {v2, v1, v3}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 780
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->mNetworkStateCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {v2, v1, v3}, Landroid/net/ConnectivityManager;->requestNetwork(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 781
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->mStateMachine:Lcom/sec/internal/ims/servicemodules/im/FtMessage$FtStateMachine;

    const-wide/16 v4, 0x3a98

    invoke-virtual {v3, v0, v4, v5}, Lcom/sec/internal/ims/servicemodules/im/FtMessage$FtStateMachine;->sendMessageDelayed(IJ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 785
    .end local v1    # "mNetworkRequest":Landroid/net/NetworkRequest;
    .end local v2    # "mConnectivityManager":Landroid/net/ConnectivityManager;
    goto :goto_0

    .line 782
    :catch_0
    move-exception v1

    .line 783
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 784
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->mStateMachine:Lcom/sec/internal/ims/servicemodules/im/FtMessage$FtStateMachine;

    invoke-virtual {v2, v0}, Lcom/sec/internal/ims/servicemodules/im/FtMessage$FtStateMachine;->sendMessage(I)V

    .line 786
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method protected acquireWakeLock()V
    .locals 3

    .line 685
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "acquireWakeLock: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 686
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/16 v1, 0x2710

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 687
    return-void
.end method

.method public attachFile(Z)V
    .locals 2
    .param p1, "checkCapability"    # Z

    .line 338
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->mStateMachine:Lcom/sec/internal/ims/servicemodules/im/FtMessage$FtStateMachine;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage$FtStateMachine;->obtainMessage(II)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage$FtStateMachine;->sendMessage(Landroid/os/Message;)V

    .line 339
    return-void
.end method

.method public attachSlmFile()V
    .locals 2

    .line 344
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->mStateMachine:Lcom/sec/internal/ims/servicemodules/im/FtMessage$FtStateMachine;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage$FtStateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage$FtStateMachine;->sendMessage(Landroid/os/Message;)V

    .line 345
    return-void
.end method

.method public cancelTransfer(Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;)V
    .locals 2
    .param p1, "reason"    # Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    .line 369
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->mStateMachine:Lcom/sec/internal/ims/servicemodules/im/FtMessage$FtStateMachine;

    const/16 v1, 0x8

    invoke-virtual {v0, v1, p1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage$FtStateMachine;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage$FtStateMachine;->sendMessage(Landroid/os/Message;)V

    .line 370
    return-void
.end method

.method protected checkAvailableRetry()Z
    .locals 4

    .line 670
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getRcsStrategy()Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object v0

    const-string v1, "extra_ft_for_ns"

    invoke-interface {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->boolSetting(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->mNetwork:Landroid/net/Network;

    .line 671
    .local v0, "network":Landroid/net/Network;
    :goto_0
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "connectivity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 672
    .local v1, "cm":Landroid/net/ConnectivityManager;
    if-eqz v0, :cond_1

    invoke-virtual {v1, v0}, Landroid/net/ConnectivityManager;->getNetworkInfo(Landroid/net/Network;)Landroid/net/NetworkInfo;

    move-result-object v2

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    .line 673
    .local v2, "ni":Landroid/net/NetworkInfo;
    :goto_1
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, 0x1

    goto :goto_2

    :cond_2
    const/4 v3, 0x0

    :goto_2
    return v3
.end method

.method protected checkValidPeriod()Z
    .locals 7

    .line 645
    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getFileExpire()Ljava/lang/String;

    move-result-object v1

    .line 647
    .local v1, "fileExpire":Ljava/lang/String;
    if-nez v1, :cond_2

    .line 648
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->mBody:Ljava/lang/String;

    invoke-static {v2}, Lcom/sec/internal/ims/servicemodules/im/util/FtHttpXmlParser;->parse(Ljava/lang/String;)Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo;

    move-result-object v2

    .line 650
    .local v2, "fileInfo":Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo;
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo;->getDataUntil()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_0

    goto :goto_0

    .line 654
    :cond_0
    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo;->getDataUntil()Ljava/lang/String;

    move-result-object v3

    move-object v1, v3

    goto :goto_1

    .line 651
    :cond_1
    :goto_0
    sget-object v3, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->LOG_TAG:Ljava/lang/String;

    const-string v4, "Failed to parse FtHttpFileInfo or fileExpire is null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 652
    return v0

    .line 658
    .end local v2    # "fileInfo":Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo;
    :cond_2
    :goto_1
    invoke-static {v1}, Lcom/sec/internal/helper/Iso8601;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v2

    .line 659
    .local v2, "expiredDate":Ljava/util/Date;
    new-instance v3, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Ljava/util/Date;-><init>(J)V

    .line 661
    .local v3, "currentDate":Ljava/util/Date;
    sget-object v4, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "checkValidPeriod: expiredDate="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " currentDate="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 662
    invoke-virtual {v2, v3}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v0
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 663
    .end local v1    # "fileExpire":Ljava/lang/String;
    .end local v2    # "expiredDate":Ljava/util/Date;
    .end local v3    # "currentDate":Ljava/util/Date;
    :catch_0
    move-exception v1

    .line 664
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 665
    return v0
.end method

.method public conferenceUriChanged()V
    .locals 1

    .line 677
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->mIsConferenceUriChanged:Z

    .line 678
    return-void
.end method

.method protected abstract createFtStateMachine(Ljava/lang/String;Landroid/os/Looper;)Lcom/sec/internal/ims/servicemodules/im/FtMessage$FtStateMachine;
.end method

.method protected deleteFile()Z
    .locals 3

    .line 603
    const/4 v0, 0x0

    .line 604
    .local v0, "isDeleted":Z
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->mFilePath:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 605
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->mFilePath:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 606
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 607
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v0

    .line 610
    .end local v1    # "file":Ljava/io/File;
    :cond_0
    return v0
.end method

.method protected deleteThumbnail()Z
    .locals 3

    .line 623
    const/4 v0, 0x0

    .line 624
    .local v0, "isDeleted":Z
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->mThumbnailPath:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 625
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->mThumbnailPath:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 626
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 627
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v0

    .line 630
    .end local v1    # "file":Ljava/io/File;
    :cond_0
    return v0
.end method

.method public getBody()Ljava/lang/String;
    .locals 1

    .line 445
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->mBody:Ljava/lang/String;

    return-object v0
.end method

.method public getCancelReason()Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;
    .locals 1

    .line 466
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->mCancelReason:Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    return-object v0
.end method

.method public getErrorNotificationId()Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$ErrorNotificationId;
    .locals 1

    .line 701
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->mErrorNotificationId:Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$ErrorNotificationId;

    return-object v0
.end method

.method public getFileBrandedUrl()Ljava/lang/String;
    .locals 1

    .line 423
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->mFileBrandedUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getFileDataUrl()Ljava/lang/String;
    .locals 1

    .line 419
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->mFileDataUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getFileDisposition()Lcom/sec/internal/constants/ims/servicemodules/im/FileDisposition;
    .locals 1

    .line 430
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->mFileDisposition:Lcom/sec/internal/constants/ims/servicemodules/im/FileDisposition;

    return-object v0
.end method

.method public getFileExpire()Ljava/lang/String;
    .locals 1

    .line 415
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->mFileExpire:Ljava/lang/String;

    return-object v0
.end method

.method public getFileName()Ljava/lang/String;
    .locals 1

    .line 498
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->mFileName:Ljava/lang/String;

    return-object v0
.end method

.method public getFilePath()Ljava/lang/String;
    .locals 1

    .line 407
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->mFilePath:Ljava/lang/String;

    return-object v0
.end method

.method public getFileSize()J
    .locals 2

    .line 411
    iget-wide v0, p0, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->mFileSize:J

    return-wide v0
.end method

.method public getFileTransferId()Ljava/lang/String;
    .locals 1

    .line 502
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->mFileTransferId:Ljava/lang/String;

    return-object v0
.end method

.method public getFtCallback()Landroid/os/Message;
    .locals 1

    .line 403
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->mFtCompleteCallback:Landroid/os/Message;

    return-object v0
.end method

.method protected getFtHttpUserAgent()Ljava/lang/String;
    .locals 2

    .line 697
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getRcsStrategy()Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->mConfig:Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    invoke-interface {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->getFtHttpUserAgent(Lcom/sec/internal/ims/servicemodules/im/ImConfig;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIsResizable()Z
    .locals 1

    .line 559
    iget-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->mIsResizable:Z

    return v0
.end method

.method public getPlayingLength()I
    .locals 1

    .line 439
    iget v0, p0, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->mPlayingLength:I

    return v0
.end method

.method public getReasonId()I
    .locals 1

    .line 470
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->mCancelReason:Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    if-nez v0, :cond_0

    .line 471
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;->UNKNOWN:Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;->getId()I

    move-result v0

    return v0

    .line 473
    :cond_0
    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;->getId()I

    move-result v0

    return v0
.end method

.method public getRejectReason()Lcom/sec/internal/constants/ims/servicemodules/im/reason/FtRejectReason;
    .locals 1

    .line 462
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->mRejectReason:Lcom/sec/internal/constants/ims/servicemodules/im/reason/FtRejectReason;

    return-object v0
.end method

.method public getResumableOptionCode()I
    .locals 1

    .line 494
    iget v0, p0, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->mResumableOptionCode:I

    return v0
.end method

.method public getRetryCount()I
    .locals 1

    .line 514
    iget v0, p0, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->mRetryCount:I

    return v0
.end method

.method public getServiceTag()Ljava/lang/String;
    .locals 1

    .line 399
    const-string v0, "FT"

    return-object v0
.end method

.method public getStateId()I
    .locals 1

    .line 458
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->mStateMachine:Lcom/sec/internal/ims/servicemodules/im/FtMessage$FtStateMachine;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/FtMessage$FtStateMachine;->getStateId()I

    move-result v0

    return v0
.end method

.method public getStateName()Ljava/lang/String;
    .locals 1

    .line 454
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->mStateMachine:Lcom/sec/internal/ims/servicemodules/im/FtMessage$FtStateMachine;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/FtMessage$FtStateMachine;->getState()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getThumbnailPath()Ljava/lang/String;
    .locals 1

    .line 486
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->mThumbnailPath:Ljava/lang/String;

    return-object v0
.end method

.method public getTimeDuration()I
    .locals 1

    .line 490
    iget v0, p0, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->mTimeDuration:I

    return v0
.end method

.method public abstract getTransferMech()I
.end method

.method public getTransferredBytes()J
    .locals 2

    .line 478
    iget-wide v0, p0, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->mTransferredBytes:J

    return-wide v0
.end method

.method public handleFileResizeResponse(ZLjava/lang/String;)V
    .locals 3
    .param p1, "isSuccess"    # Z
    .param p2, "resizedFilePath"    # Ljava/lang/String;

    .line 373
    new-instance v0, Lcom/sec/internal/ims/servicemodules/im/data/response/FileResizeResponse;

    invoke-direct {v0, p1, p2}, Lcom/sec/internal/ims/servicemodules/im/data/response/FileResizeResponse;-><init>(ZLjava/lang/String;)V

    .line 374
    .local v0, "resizeResponse":Lcom/sec/internal/ims/servicemodules/im/data/response/FileResizeResponse;
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->mStateMachine:Lcom/sec/internal/ims/servicemodules/im/FtMessage$FtStateMachine;

    const/16 v2, 0x14

    invoke-virtual {v1, v2, v0}, Lcom/sec/internal/ims/servicemodules/im/FtMessage$FtStateMachine;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/servicemodules/im/FtMessage$FtStateMachine;->sendMessage(Landroid/os/Message;)V

    .line 375
    return-void
.end method

.method public handleTransferProgress(Lcom/sec/internal/constants/ims/servicemodules/im/event/FtTransferProgressEvent;)V
    .locals 2
    .param p1, "event"    # Lcom/sec/internal/constants/ims/servicemodules/im/event/FtTransferProgressEvent;

    .line 387
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->mStateMachine:Lcom/sec/internal/ims/servicemodules/im/FtMessage$FtStateMachine;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage$FtStateMachine;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage$FtStateMachine;->sendMessage(Landroid/os/Message;)V

    .line 388
    return-void
.end method

.method protected initStateMachine(Landroid/os/Looper;I)V
    .locals 3
    .param p1, "looper"    # Landroid/os/Looper;
    .param p2, "transferState"    # I

    .line 316
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->mImdnId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x4

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->mImdnId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v0, v1, :cond_0

    goto :goto_0

    .line 319
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->mImdnId:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Landroid/text/TextUtils;->substring(Ljava/lang/CharSequence;II)Ljava/lang/String;

    move-result-object v0

    .local v0, "name":Ljava/lang/String;
    goto :goto_1

    .line 317
    .end local v0    # "name":Ljava/lang/String;
    :cond_1
    :goto_0
    const-string v0, ""

    .line 322
    .restart local v0    # "name":Ljava/lang/String;
    :goto_1
    invoke-virtual {p0, v0, p1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->createFtStateMachine(Ljava/lang/String;Landroid/os/Looper;)Lcom/sec/internal/ims/servicemodules/im/FtMessage$FtStateMachine;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->mStateMachine:Lcom/sec/internal/ims/servicemodules/im/FtMessage$FtStateMachine;

    .line 323
    if-eq p2, v1, :cond_2

    const/4 v1, 0x3

    if-eq p2, v1, :cond_2

    const/4 v1, 0x2

    if-ne p2, v1, :cond_3

    .line 325
    :cond_2
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->mIsBootup:Z

    .line 329
    :cond_3
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->mStateMachine:Lcom/sec/internal/ims/servicemodules/im/FtMessage$FtStateMachine;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/servicemodules/im/FtMessage$FtStateMachine;->getState(Ljava/lang/Integer;)Lcom/sec/internal/helper/State;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/servicemodules/im/FtMessage$FtStateMachine;->initState(Lcom/sec/internal/helper/State;)V

    .line 330
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->mStateMachine:Lcom/sec/internal/ims/servicemodules/im/FtMessage$FtStateMachine;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage$FtStateMachine;->getStateId()I

    move-result v1

    iput v1, p0, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->mStateId:I

    .line 331
    return-void
.end method

.method protected invokeFtQueueCallBack()V
    .locals 2

    .line 634
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->mFtCompleteCallback:Landroid/os/Message;

    if-eqz v0, :cond_0

    .line 635
    iput-object p0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 636
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->mFtCompleteCallback:Landroid/os/Message;

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 638
    :cond_0
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->LOG_TAG:Ljava/lang/String;

    const-string v1, "mFtCompleteCallback is not set"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 640
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->mFtCompleteCallback:Landroid/os/Message;

    .line 641
    return-void
.end method

.method public isAutoResumable()Z
    .locals 1

    .line 555
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->mConfig:Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->getEnableFtAutoResumable()Z

    move-result v0

    return v0
.end method

.method public isConferenceUriChanged()Z
    .locals 1

    .line 681
    iget-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->mIsConferenceUriChanged:Z

    return v0
.end method

.method protected isExternalStorageAvailable()Z
    .locals 2

    .line 571
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    .line 572
    .local v0, "state":Ljava/lang/String;
    const-string v1, "mounted"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public isResuming()Z
    .locals 1

    .line 547
    iget-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->mIsResuming:Z

    return v0
.end method

.method public listToDumpFormat(IILjava/util/List;)V
    .locals 5
    .param p1, "MainSub"    # I
    .param p2, "phoneId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 819
    .local p3, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_0
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {p3, v1, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 820
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->mChatId:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, "none"

    const/4 v3, 0x4

    if-eqz v0, :cond_0

    :try_start_1
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->mChatId:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v2

    :goto_0
    const/4 v4, 0x1

    invoke-interface {p3, v4, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 821
    const/4 v0, 0x2

    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->mImdnId:Ljava/lang/String;

    if-eqz v4, :cond_1

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->mImdnId:Ljava/lang/String;

    invoke-virtual {v2, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    :cond_1
    invoke-interface {p3, v0, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 822
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->mDirection:Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;->INCOMING:Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    if-ne v1, v2, :cond_2

    const-string v1, "MT"

    goto :goto_1

    :cond_2
    const-string v1, "MO"

    :goto_1
    invoke-interface {p3, v0, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 823
    iget-wide v0, p0, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->mFileSize:J

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p3, v3, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 824
    const-string v0, ""

    .line 825
    .local v0, "fileExt":Ljava/lang/String;
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->mFileName:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 826
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->mFileName:Ljava/lang/String;

    const/16 v2, 0x2e

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 827
    .local v1, "i":I
    const/4 v2, -0x1

    if-le v1, v2, :cond_3

    .line 828
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->mFileName:Ljava/lang/String;

    add-int/lit8 v3, v1, 0x1

    add-int/lit8 v4, v1, 0x4

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    .line 831
    .end local v1    # "i":I
    :cond_3
    const/4 v1, 0x5

    invoke-interface {p3, v1, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 832
    const-string v1, ","

    invoke-static {v1, p3}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    .line 833
    .local v1, "StrCommaSeparated":Ljava/lang/String;
    invoke-static {p1, v1}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 837
    .end local v0    # "fileExt":Ljava/lang/String;
    .end local v1    # "StrCommaSeparated":Ljava/lang/String;
    goto :goto_2

    .line 834
    :catch_0
    move-exception v0

    .line 835
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->LOG_TAG:Ljava/lang/String;

    const-string v2, "listToDumpFormat has an exception"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 836
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 838
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_2
    return-void
.end method

.method protected needToAcquireNetworkForFT()Z
    .locals 2

    .line 766
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getRcsStrategy()Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object v0

    const-string v1, "ft_internet_pdn"

    invoke-interface {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->boolSetting(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getRcsStrategy()Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object v0

    const-string v1, "ft_net_capability"

    invoke-interface {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->intSetting(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->mIsNetworkConnected:Z

    if-nez v0, :cond_0

    .line 767
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->isWifiConnected()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 766
    :goto_0
    return v0
.end method

.method public receiveTransfer(Landroid/os/Message;Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;Z)V
    .locals 2
    .param p1, "callback"    # Landroid/os/Message;
    .param p2, "event"    # Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;
    .param p3, "resume"    # Z

    .line 378
    iput-boolean p3, p0, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->mIsResuming:Z

    .line 379
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->mFtCompleteCallback:Landroid/os/Message;

    .line 380
    if-eqz p3, :cond_0

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->mStatus:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;->FAILED:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;

    if-ne v0, v1, :cond_0

    .line 381
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;->UNREAD:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->updateStatus(Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;)V

    .line 383
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->mStateMachine:Lcom/sec/internal/ims/servicemodules/im/FtMessage$FtStateMachine;

    const/16 v1, 0xa

    invoke-virtual {v0, v1, p2}, Lcom/sec/internal/ims/servicemodules/im/FtMessage$FtStateMachine;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage$FtStateMachine;->sendMessage(Landroid/os/Message;)V

    .line 384
    return-void
.end method

.method public rejectTransfer()V
    .locals 2

    .line 365
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->mStateMachine:Lcom/sec/internal/ims/servicemodules/im/FtMessage$FtStateMachine;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage$FtStateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage$FtStateMachine;->sendMessage(Landroid/os/Message;)V

    .line 366
    return-void
.end method

.method protected releaseNetworkAcquiredForFT()V
    .locals 2

    .line 789
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "releaseNetworkAcquiredForFT"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 790
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 791
    .local v0, "mConnectivityManager":Landroid/net/ConnectivityManager;
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->mNetworkStateCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 792
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->setNetwork(Landroid/net/Network;)V

    .line 793
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->mIsNetworkRequested:Z

    .line 794
    iput-boolean v1, p0, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->mIsNetworkConnected:Z

    .line 795
    return-void
.end method

.method protected releaseWakeLock()V
    .locals 3

    .line 690
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 691
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "releaseWakeLock: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 692
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 694
    :cond_0
    return-void
.end method

.method public removeAutoResumeFileTimer()V
    .locals 2

    .line 391
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->mStateMachine:Lcom/sec/internal/ims/servicemodules/im/FtMessage$FtStateMachine;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/FtMessage$FtStateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x15

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 392
    return-void
.end method

.method protected removeThumbnail()V
    .locals 2

    .line 614
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->mThumbnailPath:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->mConfig:Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->isFtThumb()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 615
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getRcsStrategy()Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object v0

    const-string/jumbo v1, "remove_ft_thumbnail"

    invoke-interface {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->boolSetting(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 616
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->mThumbnailPath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 617
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 618
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->mThumbnailPath:Ljava/lang/String;

    .line 620
    .end local v0    # "file":Ljava/io/File;
    :cond_0
    return-void
.end method

.method protected renameFile()Z
    .locals 7

    .line 576
    const/4 v0, 0x1

    .line 578
    .local v0, "renameSuccess":Z
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->mFilePath:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 579
    .local v1, "oldFile":Ljava/io/File;
    sget-object v2, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "temporary file path: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->mFilePath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 581
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->mListener:Lcom/sec/internal/ims/servicemodules/im/listener/FtMessageListener;

    invoke-interface {v2}, Lcom/sec/internal/ims/servicemodules/im/listener/FtMessageListener;->onRequestIncomingFtTransferPath()Ljava/lang/String;

    move-result-object v2

    .line 582
    .local v2, "dir":Ljava/lang/String;
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 583
    .local v3, "folder":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_0

    .line 584
    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    move-result v4

    if-nez v4, :cond_0

    .line 585
    sget-object v4, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->LOG_TAG:Ljava/lang/String;

    const-string v5, "Fail to create folder"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 589
    :cond_0
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->mFileName:Ljava/lang/String;

    const/16 v5, 0x80

    invoke-static {v2, v4, v5}, Lcom/sec/internal/helper/FilePathGenerator;->generateUniqueFilePath(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->mFilePath:Ljava/lang/String;

    .line 590
    sget-object v4, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "new file path: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->mFilePath:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 591
    new-instance v4, Ljava/io/File;

    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->mFilePath:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 592
    .local v4, "newFile":Ljava/io/File;
    invoke-virtual {v1, v4}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 593
    sget-object v5, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->LOG_TAG:Ljava/lang/String;

    const-string v6, "file rename success"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 595
    :cond_1
    sget-object v5, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->LOG_TAG:Ljava/lang/String;

    const-string v6, "file rename failure"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 596
    const/4 v0, 0x0

    .line 599
    :goto_0
    return v0
.end method

.method protected sendCancelFtSession(Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;)V
    .locals 5
    .param p1, "reason"    # Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    .line 742
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->mCancelReason:Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    .line 745
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/FtMessage$3;->$SwitchMap$com$sec$internal$constants$ims$servicemodules$im$reason$CancelReason:[I

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 750
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/reason/FtRejectReason;->DECLINE:Lcom/sec/internal/constants/ims/servicemodules/im/reason/FtRejectReason;

    .local v0, "rejectReason":Lcom/sec/internal/constants/ims/servicemodules/im/reason/FtRejectReason;
    goto :goto_0

    .line 747
    .end local v0    # "rejectReason":Lcom/sec/internal/constants/ims/servicemodules/im/reason/FtRejectReason;
    :cond_0
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/reason/FtRejectReason;->SESSION_TIMEOUT:Lcom/sec/internal/constants/ims/servicemodules/im/reason/FtRejectReason;

    .line 748
    .restart local v0    # "rejectReason":Lcom/sec/internal/constants/ims/servicemodules/im/reason/FtRejectReason;
    nop

    .line 755
    :goto_0
    new-instance v1, Lcom/sec/internal/constants/ims/servicemodules/im/params/RejectFtSessionParams;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->mRawHandle:Ljava/lang/Object;

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->mStateMachine:Lcom/sec/internal/ims/servicemodules/im/FtMessage$FtStateMachine;

    const/16 v4, 0x9

    invoke-virtual {v3, v4}, Lcom/sec/internal/ims/servicemodules/im/FtMessage$FtStateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->mFileTransferId:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v0, v4}, Lcom/sec/internal/constants/ims/servicemodules/im/params/RejectFtSessionParams;-><init>(Ljava/lang/Object;Landroid/os/Message;Lcom/sec/internal/constants/ims/servicemodules/im/reason/FtRejectReason;Ljava/lang/String;)V

    .line 758
    .local v1, "rejectParams":Lcom/sec/internal/constants/ims/servicemodules/im/params/RejectFtSessionParams;
    iget-boolean v2, p0, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->mIsSlmSvcMsg:Z

    if-eqz v2, :cond_1

    .line 759
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->mSlmService:Lcom/sec/internal/interfaces/ims/servicemodules/im/ISlmServiceInterface;

    invoke-interface {v2, v1}, Lcom/sec/internal/interfaces/ims/servicemodules/im/ISlmServiceInterface;->cancelFtSlmMessage(Lcom/sec/internal/constants/ims/servicemodules/im/params/RejectFtSessionParams;)V

    goto :goto_1

    .line 761
    :cond_1
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->mImsService:Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;

    invoke-interface {v2, v1}, Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;->cancelFtSession(Lcom/sec/internal/constants/ims/servicemodules/im/params/RejectFtSessionParams;)V

    .line 763
    :goto_1
    return-void
.end method

.method public sendFile()V
    .locals 2

    .line 353
    iget-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->mIsResuming:Z

    if-eqz v0, :cond_0

    .line 354
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->mStateMachine:Lcom/sec/internal/ims/servicemodules/im/FtMessage$FtStateMachine;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage$FtStateMachine;->obtainMessage(II)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage$FtStateMachine;->sendMessage(Landroid/os/Message;)V

    goto :goto_0

    .line 356
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->mStateMachine:Lcom/sec/internal/ims/servicemodules/im/FtMessage$FtStateMachine;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage$FtStateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage$FtStateMachine;->sendMessage(Landroid/os/Message;)V

    .line 358
    :goto_0
    return-void
.end method

.method protected sendSlmFile(Landroid/os/Message;)Z
    .locals 26
    .param p1, "sendFileCallback"    # Landroid/os/Message;

    .line 705
    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getRcsStrategy()Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object v1

    iget-object v2, v0, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->mUriGenerator:Lcom/sec/internal/ims/util/UriGenerator;

    iget-object v3, v0, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->mListener:Lcom/sec/internal/ims/servicemodules/im/listener/FtMessageListener;

    iget-object v4, v0, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->mChatId:Ljava/lang/String;

    invoke-interface {v3, v4}, Lcom/sec/internal/ims/servicemodules/im/listener/FtMessageListener;->onRequestParticipantUris(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->getNetworkPreferredUri(Lcom/sec/internal/ims/util/UriGenerator;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    .line 707
    .local v1, "participants":Ljava/util/Set;, "Ljava/util/Set<Lcom/sec/ims/util/ImsUri;>;"
    invoke-virtual/range {p0 .. p0}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getRcsStrategy()Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object v2

    iget-object v3, v0, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->mContentType:Ljava/lang/String;

    invoke-interface {v2, v3}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->checkSlmFileType(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 708
    sget-object v2, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "can\'t send slm. contentType = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->mContentType:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 709
    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;->FORBIDDEN_NO_RETRY_FALLBACK:Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    iput-object v2, v0, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->mCancelReason:Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    .line 710
    const/4 v2, 0x0

    return v2

    .line 713
    :cond_0
    iget-object v2, v0, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->mSlmService:Lcom/sec/internal/interfaces/ims/servicemodules/im/ISlmServiceInterface;

    new-instance v3, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendSlmFileTransferParams;

    move-object v4, v3

    iget v5, v0, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->mId:I

    const/4 v7, 0x0

    const/4 v8, 0x0

    iget-object v9, v0, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->mFileName:Ljava/lang/String;

    iget-object v10, v0, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->mFilePath:Ljava/lang/String;

    iget-wide v11, v0, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->mFileSize:J

    iget-object v13, v0, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->mContentType:Ljava/lang/String;

    iget-object v14, v0, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->mContentType:Ljava/lang/String;

    iget-object v15, v0, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->mContributionId:Ljava/lang/String;

    iget-object v6, v0, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->mConversationId:Ljava/lang/String;

    move-object/from16 v16, v6

    iget-object v6, v0, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->mInReplyToContributionId:Ljava/lang/String;

    move-object/from16 v17, v6

    iget-object v6, v0, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->mImdnId:Ljava/lang/String;

    move-object/from16 v18, v6

    iget-object v6, v0, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->mDispNotification:Ljava/util/Set;

    move-object/from16 v19, v6

    .line 715
    invoke-virtual/range {p0 .. p0}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->isBroadcastMsg()Z

    move-result v21

    iget-object v6, v0, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->mDeviceName:Ljava/lang/String;

    move-object/from16 v22, v6

    iget-object v6, v0, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->mReliableMessage:Ljava/lang/String;

    move-object/from16 v23, v6

    iget-boolean v6, v0, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->mExtraFt:Z

    move/from16 v24, v6

    iget-object v6, v0, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->mSimIMSI:Ljava/lang/String;

    move-object/from16 v25, v6

    move-object v6, v1

    move-object/from16 v20, p1

    invoke-direct/range {v4 .. v25}, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendSlmFileTransferParams;-><init>(ILjava/util/Set;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;Landroid/os/Message;ZLjava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    .line 713
    invoke-interface {v2, v3}, Lcom/sec/internal/interfaces/ims/servicemodules/im/ISlmServiceInterface;->sendFtSlmMessage(Lcom/sec/internal/constants/ims/servicemodules/im/params/SendSlmFileTransferParams;)V

    .line 717
    const/4 v2, 0x1

    return v2
.end method

.method public setContributionId(Ljava/lang/String;)V
    .locals 0
    .param p1, "contributionId"    # Ljava/lang/String;

    .line 510
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->mContributionId:Ljava/lang/String;

    .line 511
    return-void
.end method

.method public setConversationId(Ljava/lang/String;)V
    .locals 0
    .param p1, "conversationId"    # Ljava/lang/String;

    .line 506
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->mConversationId:Ljava/lang/String;

    .line 507
    return-void
.end method

.method public setFtCompleteCallback(Landroid/os/Message;)V
    .locals 0
    .param p1, "callback"    # Landroid/os/Message;

    .line 348
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->mFtCompleteCallback:Landroid/os/Message;

    .line 349
    return-void
.end method

.method public setIsGroupChat(Z)V
    .locals 0
    .param p1, "isGroupChat"    # Z

    .line 567
    iput-boolean p1, p0, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->mIsGroupChat:Z

    .line 568
    return-void
.end method

.method public setIsResizable(Z)V
    .locals 0
    .param p1, "isResizable"    # Z

    .line 563
    iput-boolean p1, p0, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->mIsResizable:Z

    .line 564
    return-void
.end method

.method public setIsResuming(Z)V
    .locals 0
    .param p1, "isResuming"    # Z

    .line 551
    iput-boolean p1, p0, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->mIsResuming:Z

    .line 552
    return-void
.end method

.method public setRetryCount(I)V
    .locals 0
    .param p1, "retryCount"    # I

    .line 518
    iput p1, p0, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->mRetryCount:I

    .line 519
    return-void
.end method

.method public setTransferredBytes(I)V
    .locals 2
    .param p1, "transferredBytes"    # I

    .line 482
    int-to-long v0, p1

    iput-wide v0, p0, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->mTransferredBytes:J

    .line 483
    return-void
.end method

.method public startFileTransferTimer()V
    .locals 0

    .line 395
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 842
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FtMessage [mFileName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->mFileName:Ljava/lang/String;

    invoke-static {v1}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", State="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 843
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getStateName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mTransferredBytes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->mTransferredBytes:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", mFileSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->mFileSize:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", mFilePath="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->mFilePath:Ljava/lang/String;

    .line 846
    invoke-static {v1}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mDeaccentedFilePath="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->mDeaccentedFilePath:Ljava/lang/String;

    .line 847
    invoke-static {v1}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mThumbnailPath="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->mThumbnailPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mIsGroupChat="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->mIsGroupChat:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mTimeDuration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->mTimeDuration:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mContributionId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->mContributionId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mConversationId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->mConversationId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mInReplyToContributionId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->mInReplyToContributionId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mRejectReason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->mRejectReason:Lcom/sec/internal/constants/ims/servicemodules/im/reason/FtRejectReason;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mCancelReason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->mCancelReason:Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mIsResuming="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->mIsResuming:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mDeviceName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->mDeviceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mWakeLock="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mExtInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->mExtInfo:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mFileFingerPrint="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->mFileFingerPrint:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mFileDisposition="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->mFileDisposition:Lcom/sec/internal/constants/ims/servicemodules/im/FileDisposition;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 862
    invoke-super {p0}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 842
    return-object v0
.end method

.method public updateBody(Ljava/lang/String;)V
    .locals 1
    .param p1, "body"    # Ljava/lang/String;

    .line 449
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->mBody:Ljava/lang/String;

    .line 450
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;->UPDATED:Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->triggerObservers(Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;)V

    .line 451
    return-void
.end method

.method public updateQueued()V
    .locals 2

    .line 522
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "updateQueued"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 523
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->mStateMachine:Lcom/sec/internal/ims/servicemodules/im/FtMessage$FtStateMachine;

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage$FtStateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage$FtStateMachine;->sendMessage(Landroid/os/Message;)V

    .line 524
    return-void
.end method

.method public updateResumeableOptionCode(I)V
    .locals 1
    .param p1, "resumeable"    # I

    .line 535
    iget v0, p0, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->mResumableOptionCode:I

    if-eq v0, p1, :cond_0

    .line 536
    iput p1, p0, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->mResumableOptionCode:I

    .line 537
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;->UPDATED:Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->triggerObservers(Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;)V

    .line 539
    :cond_0
    return-void
.end method

.method public updateState()V
    .locals 2

    .line 527
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getStateId()I

    move-result v0

    .line 528
    .local v0, "stateId":I
    iget v1, p0, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->mStateId:I

    if-eq v1, v0, :cond_0

    .line 529
    iput v0, p0, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->mStateId:I

    .line 530
    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;->UPDATED:Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;

    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->triggerObservers(Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;)V

    .line 532
    :cond_0
    return-void
.end method

.method public updateTransferredBytes(J)V
    .locals 1
    .param p1, "bytes"    # J

    .line 542
    iput-wide p1, p0, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->mTransferredBytes:J

    .line 543
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;->UPDATED:Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->triggerObservers(Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;)V

    .line 544
    return-void
.end method

.method protected validateFileResizeResponse(Lcom/sec/internal/ims/servicemodules/im/data/response/FileResizeResponse;)Z
    .locals 7
    .param p1, "resizeResponse"    # Lcom/sec/internal/ims/servicemodules/im/data/response/FileResizeResponse;

    .line 721
    iget-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->mIsSlmSvcMsg:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 722
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "validateFileResizeResponse called for non SLM msg, return"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 723
    return v1

    .line 725
    :cond_0
    iget-boolean v0, p1, Lcom/sec/internal/ims/servicemodules/im/data/response/FileResizeResponse;->isResizeSuccessful:Z

    const-string/jumbo v2, "validateFileResizeResponse File resizing failed id:"

    if-nez v0, :cond_1

    .line 726
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->mId:I

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 727
    return v1

    .line 729
    :cond_1
    iget-object v0, p1, Lcom/sec/internal/ims/servicemodules/im/data/response/FileResizeResponse;->resizedFilePath:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 730
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "validateFileResizeResponse no resized filepath, id:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->mId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 731
    return v1

    .line 733
    :cond_2
    new-instance v0, Ljava/io/File;

    iget-object v3, p1, Lcom/sec/internal/ims/servicemodules/im/data/response/FileResizeResponse;->resizedFilePath:Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 734
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v3

    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->mConfig:Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    invoke-virtual {v5}, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->getSlmMaxMsgSize()J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-lez v3, :cond_3

    goto :goto_0

    .line 738
    :cond_3
    const/4 v1, 0x1

    return v1

    .line 735
    :cond_4
    :goto_0
    sget-object v3, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->mId:I

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", length:"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 736
    return v1
.end method
