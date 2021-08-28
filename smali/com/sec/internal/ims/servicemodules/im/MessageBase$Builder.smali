.class public abstract Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;
.super Ljava/lang/Object;
.source "MessageBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/servicemodules/im/MessageBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder<",
        "TT;>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private mBody:Ljava/lang/String;

.field private mChatId:Ljava/lang/String;

.field private mConfig:Lcom/sec/internal/ims/servicemodules/im/ImConfig;

.field private mContentType:Ljava/lang/String;

.field private mContributionId:Ljava/lang/String;

.field private mConversationId:Ljava/lang/String;

.field private mDeliveredTimestamp:J

.field private mDesiredNotificationStatus:Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

.field private mDeviceId:Ljava/lang/String;

.field private mDeviceName:Ljava/lang/String;

.field private mDirection:Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

.field private final mDispNotification:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;",
            ">;"
        }
    .end annotation
.end field

.field private mDisplayedTimestamp:J

.field private mExtInfo:Ljava/lang/String;

.field private mExtraFt:Z

.field private mFlagMask:I

.field private mId:I

.field private mImdnId:Ljava/lang/String;

.field private mImdnOriginalTo:Ljava/lang/String;

.field private mImdnRecRouteList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sec/internal/constants/ims/servicemodules/im/ImImdnRecRoute;",
            ">;"
        }
    .end annotation
.end field

.field private mImsService:Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;

.field private mInsertedTimestamp:J

.field private mIsBroadcastMsg:Z

.field private mIsRoutingMsg:Z

.field private mIsSlmSvcMsg:Z

.field private mIsVM2TextMsg:Z

.field private mMaapTraficType:Ljava/lang/String;

.field private mMessagingTech:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$MessagingTech;

.field private mMnoStrategy:Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

.field private mModule:Lcom/sec/internal/ims/servicemodules/im/interfaces/IModuleInterface;

.field private mNetwork:Landroid/net/Network;

.field private mNotDisplayedCounter:I

.field private mNotificationStatus:Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

.field private mPreferredUri:Lcom/sec/ims/util/ImsUri;

.field private mRcsTrafficType:Ljava/lang/String;

.field private mReferenceId:Ljava/lang/String;

.field private mReferenceType:Ljava/lang/String;

.field private mReliableMessage:Ljava/lang/String;

.field private mRemoteUri:Lcom/sec/ims/util/ImsUri;

.field private mRequestMessageId:Ljava/lang/String;

.field private mRevocationStatus:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$RevocationStatus;

.field private mRoutingType:Lcom/sec/internal/constants/ims/servicemodules/im/RoutingType;

.field private mSentTimestamp:J

.field private mSimIMSI:Ljava/lang/String;

.field private mSlmService:Lcom/sec/internal/interfaces/ims/servicemodules/im/ISlmServiceInterface;

.field private mStatus:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;

.field private mSuggestion:Ljava/lang/String;

.field private mThumbnailTool:Lcom/sec/internal/ims/util/ThumbnailTool;

.field private mType:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;

.field private mUriGenerator:Lcom/sec/internal/ims/util/UriGenerator;

.field private mUserAlias:Ljava/lang/String;

.field private mXmsMessage:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 804
    .local p0, "this":Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;, "Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 805
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->mDispNotification:Ljava/util/Set;

    .line 830
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;->NONE:Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->mNotificationStatus:Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    .line 831
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;->NONE:Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->mDesiredNotificationStatus:Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    .line 851
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$RevocationStatus;->NONE:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$RevocationStatus;

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->mRevocationStatus:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$RevocationStatus;

    .line 853
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$MessagingTech;->NORMAL:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$MessagingTech;

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->mMessagingTech:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$MessagingTech;

    return-void
.end method

.method static synthetic access$000(Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;)Lcom/sec/internal/ims/servicemodules/im/interfaces/IModuleInterface;
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    .line 804
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->mModule:Lcom/sec/internal/ims/servicemodules/im/interfaces/IModuleInterface;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;)Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    .line 804
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->mImsService:Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    .line 804
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->mImdnRecRouteList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;)Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    .line 804
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->mType:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    .line 804
    iget-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->mIsSlmSvcMsg:Z

    return v0
.end method

.method static synthetic access$1300(Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    .line 804
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->mBody:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    .line 804
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->mSuggestion:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    .line 804
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->mContentType:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;)Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    .line 804
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->mStatus:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;)Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    .line 804
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->mDirection:Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;)J
    .locals 2
    .param p0, "x0"    # Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    .line 804
    iget-wide v0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->mInsertedTimestamp:J

    return-wide v0
.end method

.method static synthetic access$1900(Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;)J
    .locals 2
    .param p0, "x0"    # Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    .line 804
    iget-wide v0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->mSentTimestamp:J

    return-wide v0
.end method

.method static synthetic access$200(Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;)Lcom/sec/internal/interfaces/ims/servicemodules/im/ISlmServiceInterface;
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    .line 804
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->mSlmService:Lcom/sec/internal/interfaces/ims/servicemodules/im/ISlmServiceInterface;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;)J
    .locals 2
    .param p0, "x0"    # Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    .line 804
    iget-wide v0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->mDeliveredTimestamp:J

    return-wide v0
.end method

.method static synthetic access$2100(Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;)J
    .locals 2
    .param p0, "x0"    # Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    .line 804
    iget-wide v0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->mDisplayedTimestamp:J

    return-wide v0
.end method

.method static synthetic access$2200(Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;)Lcom/sec/ims/util/ImsUri;
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    .line 804
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->mRemoteUri:Lcom/sec/ims/util/ImsUri;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    .line 804
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->mUserAlias:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;)Ljava/util/Set;
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    .line 804
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->mDispNotification:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;)Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    .line 804
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->mNotificationStatus:Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;)Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    .line 804
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->mDesiredNotificationStatus:Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    .line 804
    iget v0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->mNotDisplayedCounter:I

    return v0
.end method

.method static synthetic access$2800(Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    .line 804
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->mRequestMessageId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    .line 804
    iget-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->mIsBroadcastMsg:Z

    return v0
.end method

.method static synthetic access$300(Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;)Lcom/sec/internal/ims/servicemodules/im/ImConfig;
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    .line 804
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->mConfig:Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    .line 804
    iget-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->mIsVM2TextMsg:Z

    return v0
.end method

.method static synthetic access$3100(Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    .line 804
    iget-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->mIsRoutingMsg:Z

    return v0
.end method

.method static synthetic access$3200(Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;)Lcom/sec/internal/constants/ims/servicemodules/im/RoutingType;
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    .line 804
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->mRoutingType:Lcom/sec/internal/constants/ims/servicemodules/im/RoutingType;

    return-object v0
.end method

.method static synthetic access$3300(Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    .line 804
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->mDeviceName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3400(Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    .line 804
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->mReliableMessage:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3500(Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    .line 804
    iget-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->mExtraFt:Z

    return v0
.end method

.method static synthetic access$3600(Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    .line 804
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->mXmsMessage:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3700(Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    .line 804
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->mMnoStrategy:Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    return-object v0
.end method

.method static synthetic access$3800(Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;)Landroid/net/Network;
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    .line 804
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->mNetwork:Landroid/net/Network;

    return-object v0
.end method

.method static synthetic access$3900(Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    .line 804
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->mExtInfo:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;)Lcom/sec/internal/ims/util/UriGenerator;
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    .line 804
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->mUriGenerator:Lcom/sec/internal/ims/util/UriGenerator;

    return-object v0
.end method

.method static synthetic access$4000(Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    .line 804
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->mConversationId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4100(Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    .line 804
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->mContributionId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4200(Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    .line 804
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->mDeviceId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4300(Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    .line 804
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->mSimIMSI:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4400(Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    .line 804
    iget v0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->mFlagMask:I

    return v0
.end method

.method static synthetic access$4500(Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;)Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$RevocationStatus;
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    .line 804
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->mRevocationStatus:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$RevocationStatus;

    return-object v0
.end method

.method static synthetic access$4600(Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    .line 804
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->mMaapTraficType:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4700(Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;)Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$MessagingTech;
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    .line 804
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->mMessagingTech:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$MessagingTech;

    return-object v0
.end method

.method static synthetic access$4800(Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    .line 804
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->mReferenceId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4900(Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    .line 804
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->mReferenceType:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;)Lcom/sec/internal/ims/util/ThumbnailTool;
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    .line 804
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->mThumbnailTool:Lcom/sec/internal/ims/util/ThumbnailTool;

    return-object v0
.end method

.method static synthetic access$5000(Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    .line 804
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->mRcsTrafficType:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    .line 804
    iget v0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->mId:I

    return v0
.end method

.method static synthetic access$700(Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    .line 804
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->mChatId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800(Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    .line 804
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->mImdnId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$900(Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    .line 804
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->mImdnOriginalTo:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public body(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;
    .locals 1
    .param p1, "body"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 1000
    .local p0, "this":Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;, "Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder<TT;>;"
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->mBody:Ljava/lang/String;

    .line 1001
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->self()Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v0

    return-object v0
.end method

.method public chatId(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;
    .locals 1
    .param p1, "chatId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 896
    .local p0, "this":Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;, "Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder<TT;>;"
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->mChatId:Ljava/lang/String;

    .line 897
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->self()Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v0

    return-object v0
.end method

.method public config(Lcom/sec/internal/ims/servicemodules/im/ImConfig;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;
    .locals 1
    .param p1, "config"    # Lcom/sec/internal/ims/servicemodules/im/ImConfig;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/internal/ims/servicemodules/im/ImConfig;",
            ")TT;"
        }
    .end annotation

    .line 881
    .local p0, "this":Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;, "Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder<TT;>;"
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->mConfig:Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    .line 882
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->self()Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v0

    return-object v0
.end method

.method public contentType(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;
    .locals 1
    .param p1, "contentType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 918
    .local p0, "this":Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;, "Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder<TT;>;"
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->mContentType:Ljava/lang/String;

    .line 919
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->self()Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v0

    return-object v0
.end method

.method public contributionId(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;
    .locals 1
    .param p1, "contributionId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 1065
    .local p0, "this":Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;, "Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder<TT;>;"
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->mContributionId:Ljava/lang/String;

    .line 1066
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->self()Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v0

    return-object v0
.end method

.method public conversationId(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;
    .locals 1
    .param p1, "conversationId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 1070
    .local p0, "this":Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;, "Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder<TT;>;"
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->mConversationId:Ljava/lang/String;

    .line 1071
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->self()Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v0

    return-object v0
.end method

.method public deliveredTimestamp(J)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;
    .locals 1
    .param p1, "deliveredTimestamp"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)TT;"
        }
    .end annotation

    .line 948
    .local p0, "this":Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;, "Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder<TT;>;"
    iput-wide p1, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->mDeliveredTimestamp:J

    .line 949
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->self()Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v0

    return-object v0
.end method

.method public desiredNotificationStatus(Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;
    .locals 1
    .param p1, "desiredNotificationStatus"    # Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;",
            ")TT;"
        }
    .end annotation

    .line 985
    .local p0, "this":Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;, "Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder<TT;>;"
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->mDesiredNotificationStatus:Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    .line 986
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->self()Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v0

    return-object v0
.end method

.method public deviceId(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;
    .locals 1
    .param p1, "deviceId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 1075
    .local p0, "this":Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;, "Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder<TT;>;"
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->mDeviceId:Ljava/lang/String;

    .line 1076
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->self()Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v0

    return-object v0
.end method

.method public deviceName(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;
    .locals 1
    .param p1, "deviceName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 1030
    .local p0, "this":Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;, "Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder<TT;>;"
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->mDeviceName:Ljava/lang/String;

    .line 1031
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->self()Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v0

    return-object v0
.end method

.method public direction(Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;
    .locals 1
    .param p1, "direction"    # Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;",
            ")TT;"
        }
    .end annotation

    .line 963
    .local p0, "this":Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;, "Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder<TT;>;"
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->mDirection:Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    .line 964
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->self()Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v0

    return-object v0
.end method

.method public dispNotification(Ljava/util/Set;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;",
            ">;)TT;"
        }
    .end annotation

    .line 973
    .local p0, "this":Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;, "Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder<TT;>;"
    .local p1, "dispNotification":Ljava/util/Set;, "Ljava/util/Set<Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;>;"
    if-eqz p1, :cond_0

    .line 974
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->mDispNotification:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 976
    :cond_0
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->self()Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v0

    return-object v0
.end method

.method public displayedTimestamp(J)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;
    .locals 1
    .param p1, "displayedTimestamp"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)TT;"
        }
    .end annotation

    .line 953
    .local p0, "this":Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;, "Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder<TT;>;"
    iput-wide p1, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->mDisplayedTimestamp:J

    .line 954
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->self()Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v0

    return-object v0
.end method

.method public extinfo(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;
    .locals 1
    .param p1, "extinfo"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 1060
    .local p0, "this":Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;, "Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder<TT;>;"
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->mExtInfo:Ljava/lang/String;

    .line 1061
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->self()Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v0

    return-object v0
.end method

.method public extraFt(Z)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;
    .locals 1
    .param p1, "extraFt"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TT;"
        }
    .end annotation

    .line 1040
    .local p0, "this":Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;, "Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder<TT;>;"
    iput-boolean p1, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->mExtraFt:Z

    .line 1041
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->self()Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v0

    return-object v0
.end method

.method public flagMask(I)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;
    .locals 1
    .param p1, "flagMask"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 1085
    .local p0, "this":Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;, "Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder<TT;>;"
    iput p1, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->mFlagMask:I

    .line 1086
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->self()Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v0

    return-object v0
.end method

.method public id(I)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;
    .locals 1
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 891
    .local p0, "this":Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;, "Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder<TT;>;"
    iput p1, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->mId:I

    .line 892
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->self()Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v0

    return-object v0
.end method

.method public imdnId(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;
    .locals 1
    .param p1, "imdnId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 901
    .local p0, "this":Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;, "Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder<TT;>;"
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->mImdnId:Ljava/lang/String;

    .line 902
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->self()Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v0

    return-object v0
.end method

.method public imdnIdOriginalTo(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;
    .locals 1
    .param p1, "imdnOrigToHdr"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 906
    .local p0, "this":Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;, "Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder<TT;>;"
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->mImdnOriginalTo:Ljava/lang/String;

    .line 907
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->self()Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v0

    return-object v0
.end method

.method public imdnRecordRouteList(Ljava/util/List;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sec/internal/constants/ims/servicemodules/im/ImImdnRecRoute;",
            ">;)TT;"
        }
    .end annotation

    .line 911
    .local p0, "this":Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;, "Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder<TT;>;"
    .local p1, "imdnRecRouteList":Ljava/util/List;, "Ljava/util/List<Lcom/sec/internal/constants/ims/servicemodules/im/ImImdnRecRoute;>;"
    if-eqz p1, :cond_0

    .line 912
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->mImdnRecRouteList:Ljava/util/List;

    .line 914
    :cond_0
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->self()Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v0

    return-object v0
.end method

.method public imsService(Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;
    .locals 1
    .param p1, "imsService"    # Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;",
            ")TT;"
        }
    .end annotation

    .line 866
    .local p0, "this":Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;, "Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder<TT;>;"
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->mImsService:Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;

    .line 867
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->self()Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v0

    return-object v0
.end method

.method public insertedTimestamp(J)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;
    .locals 1
    .param p1, "insertedTimestamp"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)TT;"
        }
    .end annotation

    .line 943
    .local p0, "this":Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;, "Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder<TT;>;"
    iput-wide p1, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->mInsertedTimestamp:J

    .line 944
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->self()Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v0

    return-object v0
.end method

.method public isBroadcastMsg(Z)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;
    .locals 1
    .param p1, "isBroadcastMsg"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TT;"
        }
    .end annotation

    .line 1010
    .local p0, "this":Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;, "Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder<TT;>;"
    iput-boolean p1, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->mIsBroadcastMsg:Z

    .line 1011
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->self()Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v0

    return-object v0
.end method

.method public isRoutingMsg(Z)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;
    .locals 1
    .param p1, "isRoutingMsg"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TT;"
        }
    .end annotation

    .line 1020
    .local p0, "this":Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;, "Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder<TT;>;"
    iput-boolean p1, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->mIsRoutingMsg:Z

    .line 1021
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->self()Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v0

    return-object v0
.end method

.method public isSlmSvcMsg(Z)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;
    .locals 1
    .param p1, "isSlm"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TT;"
        }
    .end annotation

    .line 928
    .local p0, "this":Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;, "Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder<TT;>;"
    iput-boolean p1, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->mIsSlmSvcMsg:Z

    .line 929
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->self()Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v0

    return-object v0
.end method

.method public isVM2TextMsg(Z)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;
    .locals 1
    .param p1, "isVM2TextMsg"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TT;"
        }
    .end annotation

    .line 1015
    .local p0, "this":Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;, "Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder<TT;>;"
    iput-boolean p1, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->mIsVM2TextMsg:Z

    .line 1016
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->self()Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v0

    return-object v0
.end method

.method public maapTrafficType(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;
    .locals 1
    .param p1, "maapTrafficType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 1095
    .local p0, "this":Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;, "Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder<TT;>;"
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->mMaapTraficType:Ljava/lang/String;

    .line 1096
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->self()Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v0

    return-object v0
.end method

.method public messagingTech(Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$MessagingTech;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;
    .locals 1
    .param p1, "messagingTech"    # Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$MessagingTech;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$MessagingTech;",
            ")TT;"
        }
    .end annotation

    .line 1100
    .local p0, "this":Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;, "Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder<TT;>;"
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->mMessagingTech:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$MessagingTech;

    .line 1101
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->self()Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mnoStrategy(Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;
    .locals 1
    .param p1, "mnoStrategy"    # Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;",
            ")TT;"
        }
    .end annotation

    .line 1050
    .local p0, "this":Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;, "Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder<TT;>;"
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->mMnoStrategy:Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    .line 1051
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->self()Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v0

    return-object v0
.end method

.method public module(Lcom/sec/internal/ims/servicemodules/im/interfaces/IModuleInterface;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;
    .locals 1
    .param p1, "module"    # Lcom/sec/internal/ims/servicemodules/im/interfaces/IModuleInterface;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/internal/ims/servicemodules/im/interfaces/IModuleInterface;",
            ")TT;"
        }
    .end annotation

    .line 861
    .local p0, "this":Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;, "Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder<TT;>;"
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->mModule:Lcom/sec/internal/ims/servicemodules/im/interfaces/IModuleInterface;

    .line 862
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->self()Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v0

    return-object v0
.end method

.method public network(Landroid/net/Network;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;
    .locals 1
    .param p1, "network"    # Landroid/net/Network;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Network;",
            ")TT;"
        }
    .end annotation

    .line 1055
    .local p0, "this":Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;, "Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder<TT;>;"
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->mNetwork:Landroid/net/Network;

    .line 1056
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->self()Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v0

    return-object v0
.end method

.method public notDisplayedCounter(I)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;
    .locals 1
    .param p1, "notDisplayedCounter"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 990
    .local p0, "this":Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;, "Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder<TT;>;"
    iput p1, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->mNotDisplayedCounter:I

    .line 991
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->self()Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v0

    return-object v0
.end method

.method public notificationStatus(Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;
    .locals 1
    .param p1, "notificationStatus"    # Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;",
            ")TT;"
        }
    .end annotation

    .line 980
    .local p0, "this":Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;, "Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder<TT;>;"
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->mNotificationStatus:Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    .line 981
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->self()Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v0

    return-object v0
.end method

.method public rcsTrafficType(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;
    .locals 1
    .param p1, "rcsTrafficType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 1115
    .local p0, "this":Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;, "Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder<TT;>;"
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->mRcsTrafficType:Ljava/lang/String;

    .line 1116
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->self()Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v0

    return-object v0
.end method

.method public referenceId(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;
    .locals 1
    .param p1, "referenceId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 1105
    .local p0, "this":Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;, "Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder<TT;>;"
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->mReferenceId:Ljava/lang/String;

    .line 1106
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->self()Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v0

    return-object v0
.end method

.method public referenceType(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;
    .locals 1
    .param p1, "referenceType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 1110
    .local p0, "this":Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;, "Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder<TT;>;"
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->mReferenceType:Ljava/lang/String;

    .line 1111
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->self()Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v0

    return-object v0
.end method

.method public reliableMessage(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;
    .locals 1
    .param p1, "reliableMessage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 1035
    .local p0, "this":Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;, "Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder<TT;>;"
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->mReliableMessage:Ljava/lang/String;

    .line 1036
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->self()Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v0

    return-object v0
.end method

.method public remoteUri(Lcom/sec/ims/util/ImsUri;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;
    .locals 1
    .param p1, "remoteUri"    # Lcom/sec/ims/util/ImsUri;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/ims/util/ImsUri;",
            ")TT;"
        }
    .end annotation

    .line 958
    .local p0, "this":Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;, "Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder<TT;>;"
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->mRemoteUri:Lcom/sec/ims/util/ImsUri;

    .line 959
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->self()Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v0

    return-object v0
.end method

.method public requestMessageId(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;
    .locals 1
    .param p1, "requestMessageId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 995
    .local p0, "this":Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;, "Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder<TT;>;"
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->mRequestMessageId:Ljava/lang/String;

    .line 996
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->self()Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v0

    return-object v0
.end method

.method public revocationStatus(Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$RevocationStatus;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;
    .locals 1
    .param p1, "revocationStatus"    # Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$RevocationStatus;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$RevocationStatus;",
            ")TT;"
        }
    .end annotation

    .line 1090
    .local p0, "this":Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;, "Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder<TT;>;"
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->mRevocationStatus:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$RevocationStatus;

    .line 1091
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->self()Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v0

    return-object v0
.end method

.method public routingType(Lcom/sec/internal/constants/ims/servicemodules/im/RoutingType;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;
    .locals 1
    .param p1, "routingType"    # Lcom/sec/internal/constants/ims/servicemodules/im/RoutingType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/internal/constants/ims/servicemodules/im/RoutingType;",
            ")TT;"
        }
    .end annotation

    .line 1025
    .local p0, "this":Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;, "Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder<TT;>;"
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->mRoutingType:Lcom/sec/internal/constants/ims/servicemodules/im/RoutingType;

    .line 1026
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->self()Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected abstract self()Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public sentTimestamp(J)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;
    .locals 1
    .param p1, "sentTimestamp"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)TT;"
        }
    .end annotation

    .line 938
    .local p0, "this":Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;, "Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder<TT;>;"
    iput-wide p1, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->mSentTimestamp:J

    .line 939
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->self()Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v0

    return-object v0
.end method

.method public simIMSI(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;
    .locals 1
    .param p1, "simIMSI"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 1080
    .local p0, "this":Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;, "Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder<TT;>;"
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->mSimIMSI:Ljava/lang/String;

    .line 1081
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->self()Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v0

    return-object v0
.end method

.method public slmService(Lcom/sec/internal/interfaces/ims/servicemodules/im/ISlmServiceInterface;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;
    .locals 1
    .param p1, "slmService"    # Lcom/sec/internal/interfaces/ims/servicemodules/im/ISlmServiceInterface;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/internal/interfaces/ims/servicemodules/im/ISlmServiceInterface;",
            ")TT;"
        }
    .end annotation

    .line 871
    .local p0, "this":Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;, "Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder<TT;>;"
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->mSlmService:Lcom/sec/internal/interfaces/ims/servicemodules/im/ISlmServiceInterface;

    .line 872
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->self()Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v0

    return-object v0
.end method

.method public status(Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;
    .locals 1
    .param p1, "status"    # Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;",
            ")TT;"
        }
    .end annotation

    .line 933
    .local p0, "this":Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;, "Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder<TT;>;"
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->mStatus:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;

    .line 934
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->self()Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v0

    return-object v0
.end method

.method public suggestion(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;
    .locals 1
    .param p1, "suggestion"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 1005
    .local p0, "this":Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;, "Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder<TT;>;"
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->mSuggestion:Ljava/lang/String;

    .line 1006
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->self()Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v0

    return-object v0
.end method

.method public thumbnailTool(Lcom/sec/internal/ims/util/ThumbnailTool;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;
    .locals 1
    .param p1, "tool"    # Lcom/sec/internal/ims/util/ThumbnailTool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/internal/ims/util/ThumbnailTool;",
            ")TT;"
        }
    .end annotation

    .line 886
    .local p0, "this":Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;, "Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder<TT;>;"
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->mThumbnailTool:Lcom/sec/internal/ims/util/ThumbnailTool;

    .line 887
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->self()Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v0

    return-object v0
.end method

.method public type(Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;
    .locals 1
    .param p1, "type"    # Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;",
            ")TT;"
        }
    .end annotation

    .line 923
    .local p0, "this":Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;, "Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder<TT;>;"
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->mType:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;

    .line 924
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->self()Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v0

    return-object v0
.end method

.method public uriGenerator(Lcom/sec/internal/ims/util/UriGenerator;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;
    .locals 1
    .param p1, "uriGenerator"    # Lcom/sec/internal/ims/util/UriGenerator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/internal/ims/util/UriGenerator;",
            ")TT;"
        }
    .end annotation

    .line 876
    .local p0, "this":Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;, "Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder<TT;>;"
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->mUriGenerator:Lcom/sec/internal/ims/util/UriGenerator;

    .line 877
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->self()Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v0

    return-object v0
.end method

.method public userAlias(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;
    .locals 1
    .param p1, "userAlias"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 968
    .local p0, "this":Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;, "Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder<TT;>;"
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->mUserAlias:Ljava/lang/String;

    .line 969
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->self()Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v0

    return-object v0
.end method

.method public xmsMessage(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;
    .locals 1
    .param p1, "xmsMessage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 1045
    .local p0, "this":Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;, "Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder<TT;>;"
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->mXmsMessage:Ljava/lang/String;

    .line 1046
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->self()Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v0

    return-object v0
.end method
