.class public abstract Lcom/sec/internal/ims/servicemodules/im/MessageBase;
.super Ljava/util/Observable;
.source "MessageBase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;
    }
.end annotation


# static fields
.field public static final FLAG_FT_SMS:I = 0x1

.field public static final FLAG_TEMPORARY:I = 0x2

.field protected static final LOG_TAG:Ljava/lang/String;


# instance fields
.field protected mBody:Ljava/lang/String;

.field protected final mChatId:Ljava/lang/String;

.field private mChatbotMessagingTech:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ChatbotMessagingTech;

.field protected final mConfig:Lcom/sec/internal/ims/servicemodules/im/ImConfig;

.field protected mContentType:Ljava/lang/String;

.field protected mContributionId:Ljava/lang/String;

.field protected mConversationId:Ljava/lang/String;

.field protected mCurrentRetryCount:I

.field protected mDeliveredTimestamp:J

.field protected mDesiredNotificationStatus:Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

.field protected mDeviceId:Ljava/lang/String;

.field protected mDeviceName:Ljava/lang/String;

.field protected final mDirection:Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

.field protected mDispNotification:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;",
            ">;"
        }
    .end annotation
.end field

.field protected mDisplayedTimestamp:J

.field protected mExtInfo:Ljava/lang/String;

.field protected mExtraFt:Z

.field protected mFlagMask:I

.field protected mId:I

.field protected final mImdnId:Ljava/lang/String;

.field protected mImdnOriginalTo:Ljava/lang/String;

.field protected mImdnRecRouteList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sec/internal/constants/ims/servicemodules/im/ImImdnRecRoute;",
            ">;"
        }
    .end annotation
.end field

.field protected final mImsService:Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;

.field protected final mInsertedTimestamp:J

.field protected mIsBroadcastMsg:Z

.field protected mIsRoutingMsg:Z

.field protected mIsSlmSvcMsg:Z

.field protected mIsVM2TextMsg:Z

.field protected mLastDisplayedTimestamp:J

.field protected mLastNotificationType:Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

.field protected mMaapTrafficType:Ljava/lang/String;

.field protected mMessagingTech:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$MessagingTech;

.field protected mMnoStrategy:Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

.field private final mModule:Lcom/sec/internal/ims/servicemodules/im/interfaces/IModuleInterface;

.field protected mNetwork:Landroid/net/Network;

.field protected mNotDisplayedCounter:I

.field protected mNotificationParticipant:Lcom/sec/ims/util/ImsUri;

.field protected mNotificationStatus:Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

.field protected mRcsTrafficType:Ljava/lang/String;

.field protected mReferenceId:Ljava/lang/String;

.field protected mReferenceType:Ljava/lang/String;

.field protected mReliableMessage:Ljava/lang/String;

.field protected mRemoteUri:Lcom/sec/ims/util/ImsUri;

.field protected mReportMsgParams:Lcom/sec/internal/constants/ims/servicemodules/im/params/SendReportMsgParams;

.field protected mRequestMessageId:Ljava/lang/String;

.field protected mRevocationStatus:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$RevocationStatus;

.field protected mRoutingType:Lcom/sec/internal/constants/ims/servicemodules/im/RoutingType;

.field protected mSentTimestamp:J

.field protected mSimIMSI:Ljava/lang/String;

.field protected final mSlmService:Lcom/sec/internal/interfaces/ims/servicemodules/im/ISlmServiceInterface;

.field protected mStatus:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;

.field protected mSuggestion:Ljava/lang/String;

.field protected final mThumbnailTool:Lcom/sec/internal/ims/util/ThumbnailTool;

.field protected mType:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;

.field protected mUriGenerator:Lcom/sec/internal/ims/util/UriGenerator;

.field protected mUserAlias:Ljava/lang/String;

.field protected mXmsMessage:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 57
    const-class v0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>(Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder<",
            "*>;)V"
        }
    .end annotation

    .line 123
    .local p1, "builder":Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;, "Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder<*>;"
    invoke-direct {p0}, Ljava/util/Observable;-><init>()V

    .line 86
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;->NONE:Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mNotificationStatus:Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    .line 87
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;->NONE:Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mDesiredNotificationStatus:Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    .line 88
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;->NONE:Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mLastNotificationType:Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    .line 103
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/RoutingType;->NONE:Lcom/sec/internal/constants/ims/servicemodules/im/RoutingType;

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mRoutingType:Lcom/sec/internal/constants/ims/servicemodules/im/RoutingType;

    .line 115
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$RevocationStatus;->NONE:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$RevocationStatus;

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mRevocationStatus:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$RevocationStatus;

    .line 118
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ChatbotMessagingTech;->UNKNOWN:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ChatbotMessagingTech;

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mChatbotMessagingTech:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ChatbotMessagingTech;

    .line 124
    invoke-static {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->access$000(Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;)Lcom/sec/internal/ims/servicemodules/im/interfaces/IModuleInterface;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/internal/helper/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    invoke-static {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->access$000(Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;)Lcom/sec/internal/ims/servicemodules/im/interfaces/IModuleInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/ims/servicemodules/im/interfaces/IModuleInterface;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/internal/helper/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    invoke-static {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->access$100(Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;)Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/internal/helper/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    invoke-static {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->access$200(Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;)Lcom/sec/internal/interfaces/ims/servicemodules/im/ISlmServiceInterface;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/internal/helper/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    invoke-static {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->access$300(Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;)Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/internal/helper/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    invoke-static {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->access$400(Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;)Lcom/sec/internal/ims/util/UriGenerator;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/internal/helper/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    invoke-static {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->access$000(Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;)Lcom/sec/internal/ims/servicemodules/im/interfaces/IModuleInterface;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mModule:Lcom/sec/internal/ims/servicemodules/im/interfaces/IModuleInterface;

    .line 132
    invoke-static {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->access$100(Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;)Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mImsService:Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;

    .line 133
    invoke-static {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->access$200(Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;)Lcom/sec/internal/interfaces/ims/servicemodules/im/ISlmServiceInterface;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mSlmService:Lcom/sec/internal/interfaces/ims/servicemodules/im/ISlmServiceInterface;

    .line 134
    invoke-static {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->access$300(Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;)Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mConfig:Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    .line 135
    invoke-static {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->access$500(Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;)Lcom/sec/internal/ims/util/ThumbnailTool;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mThumbnailTool:Lcom/sec/internal/ims/util/ThumbnailTool;

    .line 136
    invoke-static {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->access$400(Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;)Lcom/sec/internal/ims/util/UriGenerator;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mUriGenerator:Lcom/sec/internal/ims/util/UriGenerator;

    .line 137
    invoke-static {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->access$600(Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;)I

    move-result v0

    iput v0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mId:I

    .line 138
    invoke-static {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->access$700(Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mChatId:Ljava/lang/String;

    .line 139
    invoke-static {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->access$800(Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mImdnId:Ljava/lang/String;

    .line 140
    invoke-static {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->access$900(Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mImdnOriginalTo:Ljava/lang/String;

    .line 141
    invoke-static {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->access$1000(Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mImdnRecRouteList:Ljava/util/List;

    .line 142
    invoke-static {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->access$1100(Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;)Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mType:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;

    .line 143
    invoke-static {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->access$1200(Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mIsSlmSvcMsg:Z

    .line 144
    invoke-static {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->access$1300(Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mBody:Ljava/lang/String;

    .line 145
    invoke-static {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->access$1400(Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mSuggestion:Ljava/lang/String;

    .line 146
    invoke-static {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->access$1500(Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mContentType:Ljava/lang/String;

    .line 147
    invoke-static {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->access$1600(Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;)Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mStatus:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;

    .line 148
    invoke-static {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->access$1700(Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;)Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mDirection:Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    .line 149
    invoke-static {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->access$1800(Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mInsertedTimestamp:J

    .line 150
    invoke-static {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->access$1900(Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mSentTimestamp:J

    .line 151
    invoke-static {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->access$2000(Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mDeliveredTimestamp:J

    .line 152
    invoke-static {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->access$2100(Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mDisplayedTimestamp:J

    .line 153
    invoke-static {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->access$2200(Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;)Lcom/sec/ims/util/ImsUri;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mRemoteUri:Lcom/sec/ims/util/ImsUri;

    .line 154
    invoke-static {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->access$2300(Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mUserAlias:Ljava/lang/String;

    .line 155
    invoke-static {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->access$2400(Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mDispNotification:Ljava/util/Set;

    .line 156
    invoke-static {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->access$2500(Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;)Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mNotificationStatus:Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    .line 157
    invoke-static {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->access$2600(Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;)Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mDesiredNotificationStatus:Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    .line 158
    invoke-static {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->access$2700(Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;)I

    move-result v0

    iput v0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mNotDisplayedCounter:I

    .line 159
    invoke-static {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->access$2800(Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mRequestMessageId:Ljava/lang/String;

    .line 160
    invoke-static {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->access$2900(Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mIsBroadcastMsg:Z

    .line 161
    invoke-static {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->access$3000(Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mIsVM2TextMsg:Z

    .line 162
    invoke-static {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->access$3100(Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mIsRoutingMsg:Z

    .line 163
    invoke-static {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->access$3200(Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;)Lcom/sec/internal/constants/ims/servicemodules/im/RoutingType;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mRoutingType:Lcom/sec/internal/constants/ims/servicemodules/im/RoutingType;

    .line 164
    invoke-static {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->access$3300(Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mDeviceName:Ljava/lang/String;

    .line 165
    invoke-static {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->access$3400(Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mReliableMessage:Ljava/lang/String;

    .line 166
    invoke-static {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->access$3500(Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mExtraFt:Z

    .line 167
    invoke-static {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->access$3600(Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mXmsMessage:Ljava/lang/String;

    .line 168
    invoke-static {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->access$3700(Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mMnoStrategy:Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    .line 169
    invoke-static {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->access$3800(Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;)Landroid/net/Network;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mNetwork:Landroid/net/Network;

    .line 170
    invoke-static {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->access$3900(Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mExtInfo:Ljava/lang/String;

    .line 171
    invoke-static {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->access$4000(Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mConversationId:Ljava/lang/String;

    .line 172
    invoke-static {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->access$4100(Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mContributionId:Ljava/lang/String;

    .line 173
    invoke-static {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->access$4200(Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mDeviceId:Ljava/lang/String;

    .line 174
    invoke-static {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->access$4300(Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mSimIMSI:Ljava/lang/String;

    .line 175
    invoke-static {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->access$4400(Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;)I

    move-result v0

    iput v0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mFlagMask:I

    .line 176
    invoke-static {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->access$4500(Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;)Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$RevocationStatus;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mRevocationStatus:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$RevocationStatus;

    .line 177
    invoke-static {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->access$4600(Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mMaapTrafficType:Ljava/lang/String;

    .line 178
    invoke-static {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->access$4700(Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;)Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$MessagingTech;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mMessagingTech:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$MessagingTech;

    .line 179
    invoke-static {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->access$4800(Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mReferenceId:Ljava/lang/String;

    .line 180
    invoke-static {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->access$4900(Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mReferenceType:Ljava/lang/String;

    .line 181
    invoke-static {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->access$5000(Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mRcsTrafficType:Ljava/lang/String;

    .line 182
    return-void
.end method

.method private getParticipantsNetworkPreferredUri(Lcom/sec/ims/util/ImsUri;)Lcom/sec/ims/util/ImsUri;
    .locals 4
    .param p1, "uri"    # Lcom/sec/ims/util/ImsUri;

    .line 574
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getServiceModuleManager()Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;->getCapabilityDiscoveryModule()Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityDiscoveryModule;

    move-result-object v0

    .line 575
    .local v0, "discoveryModule":Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityDiscoveryModule;
    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityDiscoveryModule;->getNetworkPreferredUri(Lcom/sec/ims/util/ImsUri;)Lcom/sec/ims/util/ImsUri;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 576
    .local v1, "uriToUse":Lcom/sec/ims/util/ImsUri;
    :goto_0
    if-nez v1, :cond_1

    .line 577
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mUriGenerator:Lcom/sec/internal/ims/util/UriGenerator;

    sget-object v3, Lcom/sec/internal/ims/util/UriGenerator$URIServiceType;->RCS_URI:Lcom/sec/internal/ims/util/UriGenerator$URIServiceType;

    invoke-virtual {v2, v3, p1}, Lcom/sec/internal/ims/util/UriGenerator;->getNetworkPreferredUri(Lcom/sec/internal/ims/util/UriGenerator$URIServiceType;Lcom/sec/ims/util/ImsUri;)Lcom/sec/ims/util/ImsUri;

    move-result-object v1

    .line 579
    :cond_1
    return-object v1
.end method

.method public static getType(Ljava/lang/String;)Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;
    .locals 1
    .param p0, "contentType"    # Ljava/lang/String;

    .line 185
    if-eqz p0, :cond_1

    const-string v0, "application/vnd.gsma.rcspushlocation+xml"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "application/vnd.gsma.rcspulllocation+xml"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 186
    :cond_0
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;->LOCATION:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;

    return-object v0

    .line 189
    :cond_1
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;->TEXT:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .line 767
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 768
    return v0

    .line 770
    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    .line 771
    return v1

    .line 773
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    .line 774
    return v1

    .line 776
    :cond_2
    move-object v2, p1

    check-cast v2, Lcom/sec/internal/ims/servicemodules/im/MessageBase;

    .line 777
    .local v2, "other":Lcom/sec/internal/ims/servicemodules/im/MessageBase;
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mChatId:Ljava/lang/String;

    if-nez v3, :cond_3

    .line 778
    iget-object v3, v2, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mChatId:Ljava/lang/String;

    if-eqz v3, :cond_4

    .line 779
    return v1

    .line 781
    :cond_3
    iget-object v4, v2, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mChatId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 782
    return v1

    .line 784
    :cond_4
    iget v3, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mId:I

    iget v4, v2, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mId:I

    if-ne v3, v4, :cond_5

    goto :goto_0

    :cond_5
    move v0, v1

    :goto_0
    return v0
.end method

.method public getBody()Ljava/lang/String;
    .locals 1

    .line 211
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mBody:Ljava/lang/String;

    return-object v0
.end method

.method public getChatId()Ljava/lang/String;
    .locals 1

    .line 231
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mChatId:Ljava/lang/String;

    return-object v0
.end method

.method public getChatbotMessagingTech()Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ChatbotMessagingTech;
    .locals 1

    .line 474
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mChatbotMessagingTech:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ChatbotMessagingTech;

    return-object v0
.end method

.method public getChatbotTrafficType()Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ChatbotTrafficType;
    .locals 1

    .line 551
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ChatbotTrafficType;->NONE:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ChatbotTrafficType;

    return-object v0
.end method

.method public getContentType()Ljava/lang/String;
    .locals 1

    .line 219
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mContentType:Ljava/lang/String;

    return-object v0
.end method

.method protected getContext()Landroid/content/Context;
    .locals 1

    .line 193
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mModule:Lcom/sec/internal/ims/servicemodules/im/interfaces/IModuleInterface;

    invoke-interface {v0}, Lcom/sec/internal/ims/servicemodules/im/interfaces/IModuleInterface;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public getContributionId()Ljava/lang/String;
    .locals 1

    .line 518
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mContributionId:Ljava/lang/String;

    return-object v0
.end method

.method public getConversationId()Ljava/lang/String;
    .locals 1

    .line 514
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mConversationId:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrentRetryCount()I
    .locals 1

    .line 708
    iget v0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mCurrentRetryCount:I

    return v0
.end method

.method public getDeliveredTimestamp()J
    .locals 2

    .line 263
    iget-wide v0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mDeliveredTimestamp:J

    return-wide v0
.end method

.method public getDesiredNotificationStatus()Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;
    .locals 1

    .line 311
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mDesiredNotificationStatus:Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    return-object v0
.end method

.method public getDeviceId()Ljava/lang/String;
    .locals 1

    .line 522
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mDeviceId:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceName()Ljava/lang/String;
    .locals 1

    .line 422
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mDeviceName:Ljava/lang/String;

    return-object v0
.end method

.method public getDirection()Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;
    .locals 1

    .line 291
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mDirection:Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    return-object v0
.end method

.method public getDisplayedTimestamp()Ljava/lang/Long;
    .locals 2

    .line 271
    iget-wide v0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mDisplayedTimestamp:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public getDispositionNotification()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;",
            ">;"
        }
    .end annotation

    .line 303
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mDispNotification:Ljava/util/Set;

    return-object v0
.end method

.method public getExtInfo()Ljava/lang/String;
    .locals 1

    .line 327
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mExtInfo:Ljava/lang/String;

    return-object v0
.end method

.method public getExtraFt()Z
    .locals 1

    .line 438
    iget-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mExtraFt:Z

    return v0
.end method

.method public getFlagMask()I
    .locals 1

    .line 482
    iget v0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mFlagMask:I

    return v0
.end method

.method public getId()I
    .locals 1

    .line 203
    iget v0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mId:I

    return v0
.end method

.method public getImdnId()Ljava/lang/String;
    .locals 1

    .line 235
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mImdnId:Ljava/lang/String;

    return-object v0
.end method

.method public getImdnOriginalTo()Ljava/lang/String;
    .locals 1

    .line 239
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mImdnOriginalTo:Ljava/lang/String;

    return-object v0
.end method

.method public getImdnRecRouteList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/sec/internal/constants/ims/servicemodules/im/ImImdnRecRoute;",
            ">;"
        }
    .end annotation

    .line 243
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mImdnRecRouteList:Ljava/util/List;

    return-object v0
.end method

.method public getInsertedTimestamp()J
    .locals 2

    .line 251
    iget-wide v0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mInsertedTimestamp:J

    return-wide v0
.end method

.method public getIsSlmSvcMsg()Z
    .locals 1

    .line 227
    iget-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mIsSlmSvcMsg:Z

    return v0
.end method

.method public getLastDisplayedTimestamp()Ljava/lang/Long;
    .locals 2

    .line 279
    iget-wide v0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mLastDisplayedTimestamp:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public getLastNotificationType()Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;
    .locals 1

    .line 319
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mLastNotificationType:Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    return-object v0
.end method

.method public getMaapTrafficType()Ljava/lang/String;
    .locals 1

    .line 547
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mMaapTrafficType:Ljava/lang/String;

    return-object v0
.end method

.method public getMessagingTech()Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$MessagingTech;
    .locals 1

    .line 466
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mMessagingTech:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$MessagingTech;

    return-object v0
.end method

.method public getNewDate(J)Ljava/util/Date;
    .locals 3
    .param p1, "timeStamp"    # J

    .line 801
    new-instance v0, Ljava/util/Date;

    const-wide/16 v1, 0x0

    cmp-long v1, p1, v1

    if-nez v1, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    goto :goto_0

    :cond_0
    move-wide v1, p1

    :goto_0
    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    return-object v0
.end method

.method public getNewImdnData(Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;)Lcom/sec/internal/constants/ims/servicemodules/im/params/SendImdnParams$ImdnData;
    .locals 7
    .param p1, "status"    # Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    .line 402
    new-instance v6, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendImdnParams$ImdnData;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mImdnId:Ljava/lang/String;

    iget-wide v0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mSentTimestamp:J

    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getNewDate(J)Ljava/util/Date;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mImdnRecRouteList:Ljava/util/List;

    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mImdnOriginalTo:Ljava/lang/String;

    move-object v0, v6

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendImdnParams$ImdnData;-><init>(Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;Ljava/lang/String;Ljava/util/Date;Ljava/util/List;Ljava/lang/String;)V

    return-object v6
.end method

.method public getNotDisplayedCounter()I
    .locals 1

    .line 323
    iget v0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mNotDisplayedCounter:I

    return v0
.end method

.method public getNotificationParticipant()Lcom/sec/ims/util/ImsUri;
    .locals 1

    .line 331
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mNotificationParticipant:Lcom/sec/ims/util/ImsUri;

    return-object v0
.end method

.method public getNotificationStatus()Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;
    .locals 1

    .line 307
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mNotificationStatus:Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    return-object v0
.end method

.method public getOwnIMSI()Ljava/lang/String;
    .locals 1

    .line 526
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mSimIMSI:Ljava/lang/String;

    return-object v0
.end method

.method public getRcsStrategy()Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;
    .locals 1

    .line 721
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mMnoStrategy:Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    return-object v0
.end method

.method public getRcsTrafficType()Ljava/lang/String;
    .locals 1

    .line 566
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mRcsTrafficType:Ljava/lang/String;

    return-object v0
.end method

.method public getReferenceId()Ljava/lang/String;
    .locals 1

    .line 556
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mReferenceId:Ljava/lang/String;

    return-object v0
.end method

.method public getReferenceType()Ljava/lang/String;
    .locals 1

    .line 561
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mReferenceType:Ljava/lang/String;

    return-object v0
.end method

.method public getReliableMessage()Ljava/lang/String;
    .locals 1

    .line 430
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mReliableMessage:Ljava/lang/String;

    return-object v0
.end method

.method public getRemoteUri()Lcom/sec/ims/util/ImsUri;
    .locals 1

    .line 283
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mRemoteUri:Lcom/sec/ims/util/ImsUri;

    return-object v0
.end method

.method public getReportMsgParams()Lcom/sec/internal/constants/ims/servicemodules/im/params/SendReportMsgParams;
    .locals 1

    .line 510
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mReportMsgParams:Lcom/sec/internal/constants/ims/servicemodules/im/params/SendReportMsgParams;

    return-object v0
.end method

.method public getRequestMessageId()Ljava/lang/String;
    .locals 1

    .line 368
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mRequestMessageId:Ljava/lang/String;

    return-object v0
.end method

.method public getRevocationStatus()Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$RevocationStatus;
    .locals 1

    .line 486
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mRevocationStatus:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$RevocationStatus;

    return-object v0
.end method

.method public getRoutingType()Lcom/sec/internal/constants/ims/servicemodules/im/RoutingType;
    .locals 1

    .line 418
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mRoutingType:Lcom/sec/internal/constants/ims/servicemodules/im/RoutingType;

    return-object v0
.end method

.method public getSentTimestamp()J
    .locals 2

    .line 255
    iget-wide v0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mSentTimestamp:J

    return-wide v0
.end method

.method public abstract getServiceTag()Ljava/lang/String;
.end method

.method public getStatus()Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;
    .locals 1

    .line 295
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mStatus:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;

    return-object v0
.end method

.method public getSuggestion()Ljava/lang/String;
    .locals 1

    .line 215
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mSuggestion:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;
    .locals 1

    .line 223
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mType:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;

    return-object v0
.end method

.method public getUserAlias()Ljava/lang/String;
    .locals 1

    .line 287
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mUserAlias:Ljava/lang/String;

    return-object v0
.end method

.method public getXmsMessage()Ljava/lang/String;
    .locals 1

    .line 494
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mXmsMessage:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .line 726
    const/16 v0, 0x1f

    .line 727
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 728
    .local v1, "result":I
    mul-int v2, v0, v1

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mChatId:Ljava/lang/String;

    if-nez v3, :cond_0

    const/4 v3, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_0
    add-int/2addr v2, v3

    .line 729
    .end local v1    # "result":I
    .local v2, "result":I
    mul-int v1, v0, v2

    iget v3, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mId:I

    add-int/2addr v1, v3

    .line 730
    .end local v2    # "result":I
    .restart local v1    # "result":I
    return v1
.end method

.method public incrementRetryCount()V
    .locals 1

    .line 712
    iget v0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mCurrentRetryCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mCurrentRetryCount:I

    .line 713
    return-void
.end method

.method public isBroadcastMsg()Z
    .locals 1

    .line 406
    iget-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mIsBroadcastMsg:Z

    return v0
.end method

.method public isDeliveredNotificationRequired()Z
    .locals 2

    .line 386
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mDirection:Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;->INCOMING:Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mDispNotification:Ljava/util/Set;

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;->DELIVERED:Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isDisplayedNotificationRequired()Z
    .locals 2

    .line 391
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mDirection:Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;->INCOMING:Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mDispNotification:Ljava/util/Set;

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;->DISPLAYED:Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isFtSms()Z
    .locals 2

    .line 446
    iget v0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mFlagMask:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isIncoming()Z
    .locals 2

    .line 502
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mDirection:Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;->INCOMING:Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isOutgoing()Z
    .locals 2

    .line 498
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mDirection:Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;->OUTGOING:Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isRoutingMsg()Z
    .locals 1

    .line 414
    iget-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mIsRoutingMsg:Z

    return v0
.end method

.method public isTemporary()Z
    .locals 2

    .line 454
    iget v0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mFlagMask:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isVM2TextMsg()Z
    .locals 1

    .line 410
    iget-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mIsVM2TextMsg:Z

    return v0
.end method

.method protected isWifiConnected()Z
    .locals 1

    .line 197
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mModule:Lcom/sec/internal/ims/servicemodules/im/interfaces/IModuleInterface;

    invoke-interface {v0}, Lcom/sec/internal/ims/servicemodules/im/interfaces/IModuleInterface;->isWifiConnected()Z

    move-result v0

    return v0
.end method

.method public onImdnNotificationReceived(Lcom/sec/internal/constants/ims/servicemodules/im/event/ImdnNotificationEvent;)V
    .locals 4
    .param p1, "event"    # Lcom/sec/internal/constants/ims/servicemodules/im/event/ImdnNotificationEvent;

    .line 636
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mDirection:Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;->OUTGOING:Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    if-eq v0, v1, :cond_0

    .line 637
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Incoming message received imdn notification, ignore."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 638
    return-void

    .line 641
    :cond_0
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/MessageBase$1;->$SwitchMap$com$sec$internal$constants$ims$servicemodules$im$NotificationStatus:[I

    iget-object v1, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImdnNotificationEvent;->mStatus:Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_9

    const/4 v2, 0x2

    if-eq v0, v2, :cond_5

    const/4 v1, 0x3

    if-eq v0, v1, :cond_3

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    goto/16 :goto_0

    .line 689
    :cond_1
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mNotificationStatus:Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;->DELIVERED:Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    if-eq v0, v1, :cond_a

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mNotificationStatus:Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;->DISPLAYED:Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    if-ne v0, v1, :cond_2

    .line 690
    goto/16 :goto_0

    .line 692
    :cond_2
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;->INTERWORKING_MMS:Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mNotificationStatus:Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    .line 693
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;->INTERWORKING_MMS:Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mLastNotificationType:Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    .line 694
    iget-object v0, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImdnNotificationEvent;->mCpimDate:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->setDeliveredTimestamp(J)V

    .line 695
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$RevocationStatus;->NONE:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$RevocationStatus;

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->setRevocationStatus(Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$RevocationStatus;)V

    .line 696
    iget-object v0, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImdnNotificationEvent;->mRemoteUri:Lcom/sec/ims/util/ImsUri;

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mNotificationParticipant:Lcom/sec/ims/util/ImsUri;

    .line 697
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;->UPDATED:Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->triggerObservers(Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;)V

    .line 698
    goto/16 :goto_0

    .line 676
    :cond_3
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mNotificationStatus:Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;->DELIVERED:Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    if-eq v0, v1, :cond_a

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mNotificationStatus:Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;->DISPLAYED:Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    if-ne v0, v1, :cond_4

    .line 677
    goto/16 :goto_0

    .line 679
    :cond_4
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;->INTERWORKING_SMS:Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mNotificationStatus:Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    .line 680
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;->INTERWORKING_SMS:Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mLastNotificationType:Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    .line 681
    iget-object v0, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImdnNotificationEvent;->mCpimDate:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->setDeliveredTimestamp(J)V

    .line 682
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$RevocationStatus;->NONE:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$RevocationStatus;

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->setRevocationStatus(Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$RevocationStatus;)V

    .line 683
    iget-object v0, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImdnNotificationEvent;->mRemoteUri:Lcom/sec/ims/util/ImsUri;

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mNotificationParticipant:Lcom/sec/ims/util/ImsUri;

    .line 684
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;->UPDATED:Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->triggerObservers(Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;)V

    .line 685
    goto/16 :goto_0

    .line 652
    :cond_5
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mNotificationStatus:Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;->NONE:Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    if-ne v0, v2, :cond_6

    .line 653
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;->DELIVERED:Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mNotificationStatus:Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    .line 654
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$RevocationStatus;->NONE:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$RevocationStatus;

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->setRevocationStatus(Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$RevocationStatus;)V

    .line 655
    iget-object v0, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImdnNotificationEvent;->mCpimDate:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->setDeliveredTimestamp(J)V

    .line 658
    :cond_6
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;->DISPLAYED:Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mLastNotificationType:Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    .line 659
    iget-object v0, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImdnNotificationEvent;->mCpimDate:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mLastDisplayedTimestamp:J

    .line 660
    iget v0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mNotDisplayedCounter:I

    if-lez v0, :cond_7

    .line 661
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onImdnNotificationReceived: Decrease mNotDisplayedCounter "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mNotDisplayedCounter:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 662
    iget v0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mNotDisplayedCounter:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mNotDisplayedCounter:I

    .line 665
    :cond_7
    iget v0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mNotDisplayedCounter:I

    if-nez v0, :cond_8

    .line 666
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;->DISPLAYED:Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mNotificationStatus:Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    .line 667
    iget-object v0, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImdnNotificationEvent;->mCpimDate:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->setDisplayedTimestamp(J)V

    .line 670
    :cond_8
    iget-object v0, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImdnNotificationEvent;->mRemoteUri:Lcom/sec/ims/util/ImsUri;

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mNotificationParticipant:Lcom/sec/ims/util/ImsUri;

    .line 671
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;->UPDATED:Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->triggerObservers(Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;)V

    .line 673
    goto :goto_0

    .line 643
    :cond_9
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;->DELIVERED:Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mNotificationStatus:Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    .line 644
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;->DELIVERED:Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mLastNotificationType:Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    .line 645
    iget-object v0, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImdnNotificationEvent;->mCpimDate:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->setDeliveredTimestamp(J)V

    .line 646
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$RevocationStatus;->NONE:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$RevocationStatus;

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->setRevocationStatus(Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$RevocationStatus;)V

    .line 647
    iget-object v0, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImdnNotificationEvent;->mRemoteUri:Lcom/sec/ims/util/ImsUri;

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mNotificationParticipant:Lcom/sec/ims/util/ImsUri;

    .line 648
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;->UPDATED:Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->triggerObservers(Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;)V

    .line 649
    nop

    .line 705
    :cond_a
    :goto_0
    return-void
.end method

.method protected onSendDeliveredNotificationDone()V
    .locals 2

    .line 626
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mNotificationStatus:Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;->DISPLAYED:Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    if-eq v0, v1, :cond_0

    .line 627
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;->DELIVERED:Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->updateNotificationStatus(Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;)V

    .line 629
    :cond_0
    return-void
.end method

.method protected onSendDisplayedNotificationDone()V
    .locals 1

    .line 632
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;->DISPLAYED:Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->updateNotificationStatus(Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;)V

    .line 633
    return-void
.end method

.method public onSendMessageDone(Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;)V
    .locals 0
    .param p1, "result"    # Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;
    .param p2, "strategyResponse"    # Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;

    .line 571
    return-void
.end method

.method protected sendDeliveredNotification(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;Ljava/lang/String;ZZ)V
    .locals 17
    .param p1, "rawHandle"    # Ljava/lang/Object;
    .param p2, "conversationId"    # Ljava/lang/String;
    .param p3, "contributionId"    # Ljava/lang/String;
    .param p4, "onComplete"    # Landroid/os/Message;
    .param p5, "ownImsi"    # Ljava/lang/String;
    .param p6, "isGroupchat"    # Z
    .param p7, "isBotSessionAnonymized"    # Z

    .line 584
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mRemoteUri:Lcom/sec/ims/util/ImsUri;

    if-nez v1, :cond_0

    .line 585
    invoke-virtual/range {p0 .. p0}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->onSendDeliveredNotificationDone()V

    .line 586
    return-void

    .line 588
    :cond_0
    iget-object v1, v0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mUriGenerator:Lcom/sec/internal/ims/util/UriGenerator;

    sget-object v2, Lcom/sec/internal/ims/util/UriGenerator$URIServiceType;->RCS_URI:Lcom/sec/internal/ims/util/UriGenerator$URIServiceType;

    iget-object v3, v0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mRemoteUri:Lcom/sec/ims/util/ImsUri;

    invoke-direct {v0, v3}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getParticipantsNetworkPreferredUri(Lcom/sec/ims/util/ImsUri;)Lcom/sec/ims/util/ImsUri;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/sec/internal/ims/util/UriGenerator;->getNetworkPreferredUri(Lcom/sec/internal/ims/util/UriGenerator$URIServiceType;Lcom/sec/ims/util/ImsUri;)Lcom/sec/ims/util/ImsUri;

    move-result-object v1

    .line 590
    .local v1, "remoteUri":Lcom/sec/ims/util/ImsUri;
    new-instance v2, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendImdnParams;

    iget-object v7, v0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mChatId:Ljava/lang/String;

    iget-object v3, v0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mConversationId:Ljava/lang/String;

    if-nez v3, :cond_1

    move-object/from16 v8, p2

    goto :goto_0

    :cond_1
    move-object v8, v3

    .line 591
    :goto_0
    iget-object v3, v0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mContributionId:Ljava/lang/String;

    if-nez v3, :cond_2

    move-object/from16 v9, p3

    goto :goto_1

    :cond_2
    move-object v9, v3

    :goto_1
    iget-object v12, v0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mDeviceId:Ljava/lang/String;

    sget-object v3, Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;->DELIVERED:Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    .line 592
    invoke-virtual {v0, v3}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getNewImdnData(Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;)Lcom/sec/internal/constants/ims/servicemodules/im/params/SendImdnParams$ImdnData;

    move-result-object v13

    new-instance v15, Ljava/util/Date;

    invoke-direct {v15}, Ljava/util/Date;-><init>()V

    move-object v4, v2

    move-object/from16 v5, p1

    move-object v6, v1

    move-object/from16 v10, p5

    move-object/from16 v11, p4

    move/from16 v14, p6

    move/from16 v16, p7

    invoke-direct/range {v4 .. v16}, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendImdnParams;-><init>(Ljava/lang/Object;Lcom/sec/ims/util/ImsUri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/params/SendImdnParams$ImdnData;ZLjava/util/Date;Z)V

    .line 593
    .local v2, "params":Lcom/sec/internal/constants/ims/servicemodules/im/params/SendImdnParams;
    iget-boolean v3, v0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mIsSlmSvcMsg:Z

    if-eqz v3, :cond_4

    .line 594
    invoke-virtual/range {p0 .. p0}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->isVM2TextMsg()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 595
    invoke-static {}, Lcom/sec/internal/helper/ImExtensionMNOHeadersHelper;->addVM2TextHeaders()Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendImdnParams;->addImExtensionMNOHeaders(Ljava/util/Map;)V

    .line 597
    :cond_3
    iget-object v3, v0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mSlmService:Lcom/sec/internal/interfaces/ims/servicemodules/im/ISlmServiceInterface;

    invoke-interface {v3, v2}, Lcom/sec/internal/interfaces/ims/servicemodules/im/ISlmServiceInterface;->sendSlmDeliveredNotification(Lcom/sec/internal/constants/ims/servicemodules/im/params/SendImdnParams;)V

    goto :goto_2

    .line 599
    :cond_4
    iget-object v3, v0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mImsService:Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;

    invoke-interface {v3, v2}, Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;->sendDeliveredNotification(Lcom/sec/internal/constants/ims/servicemodules/im/params/SendImdnParams;)V

    .line 601
    :goto_2
    return-void
.end method

.method protected sendDisplayedNotification(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;Ljava/lang/String;ZZ)V
    .locals 17
    .param p1, "rawHandle"    # Ljava/lang/Object;
    .param p2, "conversationId"    # Ljava/lang/String;
    .param p3, "contributionId"    # Ljava/lang/String;
    .param p4, "onComplete"    # Landroid/os/Message;
    .param p5, "ownImsi"    # Ljava/lang/String;
    .param p6, "isGroupchat"    # Z
    .param p7, "isBotSessionAnonymized"    # Z

    .line 605
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mRemoteUri:Lcom/sec/ims/util/ImsUri;

    if-nez v1, :cond_0

    .line 606
    invoke-virtual/range {p0 .. p0}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->onSendDisplayedNotificationDone()V

    .line 607
    return-void

    .line 609
    :cond_0
    iget-object v1, v0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mUriGenerator:Lcom/sec/internal/ims/util/UriGenerator;

    sget-object v2, Lcom/sec/internal/ims/util/UriGenerator$URIServiceType;->RCS_URI:Lcom/sec/internal/ims/util/UriGenerator$URIServiceType;

    iget-object v3, v0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mRemoteUri:Lcom/sec/ims/util/ImsUri;

    invoke-direct {v0, v3}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getParticipantsNetworkPreferredUri(Lcom/sec/ims/util/ImsUri;)Lcom/sec/ims/util/ImsUri;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/sec/internal/ims/util/UriGenerator;->getNetworkPreferredUri(Lcom/sec/internal/ims/util/UriGenerator$URIServiceType;Lcom/sec/ims/util/ImsUri;)Lcom/sec/ims/util/ImsUri;

    move-result-object v1

    .line 612
    .local v1, "remoteUri":Lcom/sec/ims/util/ImsUri;
    new-instance v2, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendImdnParams;

    iget-object v7, v0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mChatId:Ljava/lang/String;

    iget-object v3, v0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mConversationId:Ljava/lang/String;

    if-nez v3, :cond_1

    move-object/from16 v8, p2

    goto :goto_0

    :cond_1
    move-object v8, v3

    .line 613
    :goto_0
    iget-object v3, v0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mContributionId:Ljava/lang/String;

    if-nez v3, :cond_2

    move-object/from16 v9, p3

    goto :goto_1

    :cond_2
    move-object v9, v3

    :goto_1
    iget-object v12, v0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mDeviceId:Ljava/lang/String;

    sget-object v3, Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;->DISPLAYED:Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    .line 614
    invoke-virtual {v0, v3}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getNewImdnData(Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;)Lcom/sec/internal/constants/ims/servicemodules/im/params/SendImdnParams$ImdnData;

    move-result-object v13

    new-instance v15, Ljava/util/Date;

    invoke-direct {v15}, Ljava/util/Date;-><init>()V

    move-object v4, v2

    move-object/from16 v5, p1

    move-object v6, v1

    move-object/from16 v10, p5

    move-object/from16 v11, p4

    move/from16 v14, p6

    move/from16 v16, p7

    invoke-direct/range {v4 .. v16}, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendImdnParams;-><init>(Ljava/lang/Object;Lcom/sec/ims/util/ImsUri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/params/SendImdnParams$ImdnData;ZLjava/util/Date;Z)V

    .line 615
    .local v2, "params":Lcom/sec/internal/constants/ims/servicemodules/im/params/SendImdnParams;
    iget-boolean v3, v0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mIsSlmSvcMsg:Z

    if-eqz v3, :cond_4

    .line 616
    invoke-virtual/range {p0 .. p0}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->isVM2TextMsg()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 617
    invoke-static {}, Lcom/sec/internal/helper/ImExtensionMNOHeadersHelper;->addVM2TextHeaders()Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendImdnParams;->addImExtensionMNOHeaders(Ljava/util/Map;)V

    .line 619
    :cond_3
    iget-object v3, v0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mSlmService:Lcom/sec/internal/interfaces/ims/servicemodules/im/ISlmServiceInterface;

    invoke-interface {v3, v2}, Lcom/sec/internal/interfaces/ims/servicemodules/im/ISlmServiceInterface;->sendSlmDisplayedNotification(Lcom/sec/internal/constants/ims/servicemodules/im/params/SendImdnParams;)V

    goto :goto_2

    .line 621
    :cond_4
    iget-object v3, v0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mImsService:Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;

    invoke-interface {v3, v2}, Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;->sendDisplayedNotification(Lcom/sec/internal/constants/ims/servicemodules/im/params/SendImdnParams;)V

    .line 623
    :goto_2
    return-void
.end method

.method public sendMessageRevokeRequest(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;Ljava/lang/String;)V
    .locals 11
    .param p1, "conversationId"    # Ljava/lang/String;
    .param p2, "contributionId"    # Ljava/lang/String;
    .param p3, "onComplete"    # Landroid/os/Message;
    .param p4, "ownImsi"    # Ljava/lang/String;

    .line 788
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mRemoteUri:Lcom/sec/ims/util/ImsUri;

    if-nez v0, :cond_0

    .line 789
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "remote uri is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 790
    return-void

    .line 793
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mUriGenerator:Lcom/sec/internal/ims/util/UriGenerator;

    sget-object v1, Lcom/sec/internal/ims/util/UriGenerator$URIServiceType;->RCS_URI:Lcom/sec/internal/ims/util/UriGenerator$URIServiceType;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mRemoteUri:Lcom/sec/ims/util/ImsUri;

    invoke-virtual {v2}, Lcom/sec/ims/util/ImsUri;->getMsisdn()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/internal/ims/util/UriGenerator;->getNetworkPreferredUri(Lcom/sec/internal/ims/util/UriGenerator$URIServiceType;Ljava/lang/String;Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object v0

    .line 795
    .local v0, "remoteUri":Lcom/sec/ims/util/ImsUri;
    new-instance v1, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendMessageRevokeParams;

    iget-object v6, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mImdnId:Ljava/lang/String;

    move-object v4, v1

    move-object v5, v0

    move-object v7, p3

    move-object v8, p1

    move-object v9, p2

    move-object v10, p4

    invoke-direct/range {v4 .. v10}, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendMessageRevokeParams;-><init>(Lcom/sec/ims/util/ImsUri;Ljava/lang/String;Landroid/os/Message;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 797
    .local v1, "params":Lcom/sec/internal/constants/ims/servicemodules/im/params/SendMessageRevokeParams;
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mImsService:Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;

    invoke-interface {v2, v1}, Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;->sendMessageRevokeRequest(Lcom/sec/internal/constants/ims/servicemodules/im/params/SendMessageRevokeParams;)V

    .line 798
    return-void
.end method

.method public setChatbotMessagingTech(Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ChatbotMessagingTech;)V
    .locals 0
    .param p1, "chatbotMessagingTech"    # Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ChatbotMessagingTech;

    .line 478
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mChatbotMessagingTech:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ChatbotMessagingTech;

    .line 479
    return-void
.end method

.method public setDeliveredTimestamp(J)V
    .locals 0
    .param p1, "time"    # J

    .line 267
    iput-wide p1, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mDeliveredTimestamp:J

    .line 268
    return-void
.end method

.method public setDesiredNotificationStatus(Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;)V
    .locals 0
    .param p1, "status"    # Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    .line 315
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mDesiredNotificationStatus:Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    .line 316
    return-void
.end method

.method public setDeviceName(Ljava/lang/String;)V
    .locals 0
    .param p1, "deviceName"    # Ljava/lang/String;

    .line 426
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mDeviceName:Ljava/lang/String;

    .line 427
    return-void
.end method

.method public setDisplayedTimestamp(J)V
    .locals 0
    .param p1, "time"    # J

    .line 275
    iput-wide p1, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mDisplayedTimestamp:J

    .line 276
    return-void
.end method

.method public setExtraFt(Z)V
    .locals 0
    .param p1, "extraFt"    # Z

    .line 442
    iput-boolean p1, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mExtraFt:Z

    .line 443
    return-void
.end method

.method public setFtSms(Z)V
    .locals 1
    .param p1, "ftSms"    # Z

    .line 450
    iget v0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mFlagMask:I

    if-eqz p1, :cond_0

    or-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    and-int/lit8 v0, v0, -0x2

    :goto_0
    iput v0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mFlagMask:I

    .line 451
    return-void
.end method

.method public setId(I)V
    .locals 0
    .param p1, "id"    # I

    .line 207
    iput p1, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mId:I

    .line 208
    return-void
.end method

.method public setImdnRecRouteList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sec/internal/constants/ims/servicemodules/im/ImImdnRecRoute;",
            ">;)V"
        }
    .end annotation

    .line 247
    .local p1, "imdnRecRouteList":Ljava/util/List;, "Ljava/util/List<Lcom/sec/internal/constants/ims/servicemodules/im/ImImdnRecRoute;>;"
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mImdnRecRouteList:Ljava/util/List;

    .line 248
    return-void
.end method

.method public setMessagingTech(Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$MessagingTech;)V
    .locals 0
    .param p1, "messagingTech"    # Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$MessagingTech;

    .line 470
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mMessagingTech:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$MessagingTech;

    .line 471
    return-void
.end method

.method public setNetwork(Landroid/net/Network;)V
    .locals 0
    .param p1, "network"    # Landroid/net/Network;

    .line 335
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mNetwork:Landroid/net/Network;

    .line 336
    return-void
.end method

.method public setReliableMessage(Ljava/lang/String;)V
    .locals 0
    .param p1, "reliableMessage"    # Ljava/lang/String;

    .line 434
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mReliableMessage:Ljava/lang/String;

    .line 435
    return-void
.end method

.method public setRevocationStatus(Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$RevocationStatus;)V
    .locals 0
    .param p1, "status"    # Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$RevocationStatus;

    .line 490
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mRevocationStatus:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$RevocationStatus;

    .line 491
    return-void
.end method

.method public setSentTimestamp(J)V
    .locals 0
    .param p1, "time"    # J

    .line 259
    iput-wide p1, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mSentTimestamp:J

    .line 260
    return-void
.end method

.method public setSlmSvcMsg(Z)V
    .locals 0
    .param p1, "isSlmSvcMsg"    # Z

    .line 462
    iput-boolean p1, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mIsSlmSvcMsg:Z

    .line 463
    return-void
.end method

.method public setSpamInfo(Lcom/sec/ims/util/ImsUri;Lcom/sec/ims/util/ImsUri;Ljava/lang/String;I)V
    .locals 1
    .param p1, "spamFrom"    # Lcom/sec/ims/util/ImsUri;
    .param p2, "spamTo"    # Lcom/sec/ims/util/ImsUri;
    .param p3, "spamDate"    # Ljava/lang/String;
    .param p4, "spamMsgId"    # I

    .line 506
    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendReportMsgParams;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendReportMsgParams;-><init>(Lcom/sec/ims/util/ImsUri;Lcom/sec/ims/util/ImsUri;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mReportMsgParams:Lcom/sec/internal/constants/ims/servicemodules/im/params/SendReportMsgParams;

    .line 507
    return-void
.end method

.method public setStatus(Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;)V
    .locals 0
    .param p1, "status"    # Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;

    .line 299
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mStatus:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;

    .line 300
    return-void
.end method

.method public setTemporary(Z)V
    .locals 1
    .param p1, "isTemporary"    # Z

    .line 458
    iget v0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mFlagMask:I

    if-eqz p1, :cond_0

    or-int/lit8 v0, v0, 0x2

    goto :goto_0

    :cond_0
    and-int/lit8 v0, v0, -0x3

    :goto_0
    iput v0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mFlagMask:I

    .line 459
    return-void
.end method

.method public toList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/sec/internal/ims/servicemodules/im/MessageBase;",
            ">;"
        }
    .end annotation

    .line 396
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 397
    .local v0, "l":Ljava/util/List;, "Ljava/util/List<Lcom/sec/internal/ims/servicemodules/im/MessageBase;>;"
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 398
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 735
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MessageBase [mChatId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mChatId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mBody="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mBody:Ljava/lang/String;

    .line 737
    invoke-static {v1}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mImdnId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mImdnId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mRemoteUri="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mRemoteUri:Lcom/sec/ims/util/ImsUri;

    .line 739
    invoke-static {v1}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mType:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mContentType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mContentType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mImdnOriginalTo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mImdnOriginalTo:Ljava/lang/String;

    .line 742
    invoke-static {v1}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mImdnRecRouteList="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mImdnRecRouteList:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mStatus:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mInsertedTimestamp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mInsertedTimestamp:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", mSentTimestamp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mSentTimestamp:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", mDeliveredTimestamp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mDeliveredTimestamp:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", mDisplayedTimestamp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mDisplayedTimestamp:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", mDirection="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mDirection:Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mUserAlias="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mUserAlias:Ljava/lang/String;

    .line 750
    invoke-static {v1}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mCurrentRetryCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mCurrentRetryCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mDispNotification="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mDispNotification:Ljava/util/Set;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mNotificationStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mNotificationStatus:Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mDesiredNotificationStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mDesiredNotificationStatus:Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mNotDisplayedCounter="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mNotDisplayedCounter:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mIsBroadcastMsg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mIsBroadcastMsg:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mDeviceId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mDeviceId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mMaapTrafficType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mMaapTrafficType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mReferenceId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mReferenceId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mReferenceType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mReferenceType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mRcsTrafficType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mRcsTrafficType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 735
    return-object v0
.end method

.method public triggerObservers(Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;)V
    .locals 0
    .param p1, "action"    # Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;

    .line 716
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->setChanged()V

    .line 717
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->notifyObservers(Ljava/lang/Object;)V

    .line 718
    return-void
.end method

.method public updateDeliveredTimestamp(J)V
    .locals 1
    .param p1, "time"    # J

    .line 351
    iput-wide p1, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mDeliveredTimestamp:J

    .line 352
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;->UPDATED:Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->triggerObservers(Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;)V

    .line 353
    return-void
.end method

.method public updateDesiredNotificationStatus(Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;)V
    .locals 1
    .param p1, "status"    # Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    .line 361
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mDesiredNotificationStatus:Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    if-eq v0, p1, :cond_0

    .line 362
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mDesiredNotificationStatus:Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    .line 363
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;->UPDATED:Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->triggerObservers(Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;)V

    .line 365
    :cond_0
    return-void
.end method

.method public updateDisplayedTimestamp(J)V
    .locals 1
    .param p1, "time"    # J

    .line 356
    iput-wide p1, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mDisplayedTimestamp:J

    .line 357
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;->UPDATED:Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->triggerObservers(Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;)V

    .line 358
    return-void
.end method

.method public updateExtInfo(Ljava/lang/String;)V
    .locals 1
    .param p1, "extinfo"    # Ljava/lang/String;

    .line 346
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mExtInfo:Ljava/lang/String;

    .line 347
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;->UPDATED:Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->triggerObservers(Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;)V

    .line 348
    return-void
.end method

.method public updateNotificationStatus(Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;)V
    .locals 1
    .param p1, "status"    # Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    .line 372
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mNotificationStatus:Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    if-eq p1, v0, :cond_0

    .line 373
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mNotificationStatus:Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    .line 374
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;->UPDATED:Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->triggerObservers(Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;)V

    .line 376
    :cond_0
    return-void
.end method

.method public updateOwnIMSI(Ljava/lang/String;)V
    .locals 1
    .param p1, "imsi"    # Ljava/lang/String;

    .line 530
    if-eqz p1, :cond_0

    const-string v0, ""

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mSimIMSI:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 531
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mSimIMSI:Ljava/lang/String;

    .line 532
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;->UPDATED:Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->triggerObservers(Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;)V

    .line 534
    :cond_0
    return-void
.end method

.method public updateRemoteUri(Lcom/sec/ims/util/ImsUri;)V
    .locals 1
    .param p1, "remoteUri"    # Lcom/sec/ims/util/ImsUri;

    .line 537
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mRemoteUri:Lcom/sec/ims/util/ImsUri;

    .line 538
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;->UPDATED:Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->triggerObservers(Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;)V

    .line 539
    return-void
.end method

.method public updateRevocationStatus(Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$RevocationStatus;)V
    .locals 1
    .param p1, "status"    # Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$RevocationStatus;

    .line 379
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mRevocationStatus:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$RevocationStatus;

    if-eq p1, v0, :cond_0

    .line 380
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mRevocationStatus:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$RevocationStatus;

    .line 381
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;->UPDATED:Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->triggerObservers(Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;)V

    .line 383
    :cond_0
    return-void
.end method

.method public updateStatus(Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;)V
    .locals 1
    .param p1, "status"    # Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;

    .line 339
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mStatus:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;

    if-eq v0, p1, :cond_0

    .line 340
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mStatus:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;

    .line 341
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;->UPDATED:Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->triggerObservers(Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;)V

    .line 343
    :cond_0
    return-void
.end method
