.class public Lcom/sec/internal/ims/cmstore/strategy/ATTCmStrategy;
.super Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;
.source "ATTCmStrategy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/internal/ims/cmstore/strategy/ATTCmStrategy$ATTAttributeNames;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private final ATT_API_VERSION:Ljava/lang/String;

.field private final ATT_STORE_NAME:Ljava/lang/String;

.field private mApiFailCount:I

.field private mControllerOfLastFailedAPI:Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;

.field private mLastFailedAPI:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 61
    const-class v0, Lcom/sec/internal/ims/cmstore/strategy/ATTCmStrategy;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/cmstore/strategy/ATTCmStrategy;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 2

    .line 72
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;-><init>()V

    .line 63
    const-string/jumbo v0, "v1"

    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/strategy/ATTCmStrategy;->ATT_API_VERSION:Ljava/lang/String;

    .line 64
    const-string v0, "base"

    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/strategy/ATTCmStrategy;->ATT_STORE_NAME:Ljava/lang/String;

    .line 66
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/internal/ims/cmstore/strategy/ATTCmStrategy;->mApiFailCount:I

    .line 68
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/strategy/ATTCmStrategy;->mLastFailedAPI:Ljava/lang/Class;

    .line 69
    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/strategy/ATTCmStrategy;->mControllerOfLastFailedAPI:Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;

    .line 73
    sget-object v0, Lcom/sec/internal/ims/cmstore/strategy/ATTCmStrategy;->LOG_TAG:Ljava/lang/String;

    const-string v1, "ATTCmStrategy"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    sget-object v0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$CmStrategyType;->ATT:Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$CmStrategyType;

    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/strategy/ATTCmStrategy;->mStrategyType:Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$CmStrategyType;

    .line 75
    const-string v0, "https"

    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/strategy/ATTCmStrategy;->mProtocol:Ljava/lang/String;

    .line 76
    const-string v0, "application/json"

    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/strategy/ATTCmStrategy;->mContentType:Ljava/lang/String;

    .line 77
    sget-object v0, Lcom/sec/internal/omanetapi/common/data/NotificationFormat;->JSON:Lcom/sec/internal/omanetapi/common/data/NotificationFormat;

    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/strategy/ATTCmStrategy;->mNotificationFormat:Lcom/sec/internal/omanetapi/common/data/NotificationFormat;

    .line 79
    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/strategy/ATTCmStrategy;->onOmaFlowInitStart()V

    .line 80
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/strategy/ATTCmStrategy;->initSuccessfulCallFlowTranslator()V

    .line 81
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/strategy/ATTCmStrategy;->initFailedCallFlowTranslator()V

    .line 82
    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/strategy/ATTCmStrategy;->onOmaFlowInitComplete()V

    .line 83
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/strategy/ATTCmStrategy;->initStandardRetrySchedule()V

    .line 84
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/strategy/ATTCmStrategy;->initMessageAttributeRegistration()V

    .line 85
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/strategy/ATTCmStrategy;->initOmaRetryVariables()V

    .line 86
    return-void
.end method

.method private clearOmaRetryVariables()V
    .locals 2

    .line 956
    sget-object v0, Lcom/sec/internal/ims/cmstore/strategy/ATTCmStrategy;->LOG_TAG:Ljava/lang/String;

    const-string v1, "clear oma retry variables"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 957
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/strategy/ATTCmStrategy;->mLastFailedAPI:Ljava/lang/Class;

    .line 958
    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/strategy/ATTCmStrategy;->mControllerOfLastFailedAPI:Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;

    .line 959
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/internal/ims/cmstore/strategy/ATTCmStrategy;->mApiFailCount:I

    .line 960
    invoke-static {}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getInstance()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v0

    iget v1, p0, Lcom/sec/internal/ims/cmstore/strategy/ATTCmStrategy;->mApiFailCount:I

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveOmaRetryCounter(I)V

    .line 961
    return-void
.end method

.method private increaseFailedCount(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;)V
    .locals 3
    .param p1, "api"    # Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;
    .param p2, "controller"    # Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;

    .line 874
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/strategy/ATTCmStrategy;->mLastFailedAPI:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 875
    iget v0, p0, Lcom/sec/internal/ims/cmstore/strategy/ATTCmStrategy;->mApiFailCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sec/internal/ims/cmstore/strategy/ATTCmStrategy;->mApiFailCount:I

    .line 876
    sget-object v0, Lcom/sec/internal/ims/cmstore/strategy/ATTCmStrategy;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "failed count increment 1, failed count: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/sec/internal/ims/cmstore/strategy/ATTCmStrategy;->mApiFailCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 877
    invoke-static {}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getInstance()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v0

    iget v1, p0, Lcom/sec/internal/ims/cmstore/strategy/ATTCmStrategy;->mApiFailCount:I

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveOmaRetryCounter(I)V

    goto :goto_0

    .line 879
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/strategy/ATTCmStrategy;->mLastFailedAPI:Ljava/lang/Class;

    .line 880
    iput-object p2, p0, Lcom/sec/internal/ims/cmstore/strategy/ATTCmStrategy;->mControllerOfLastFailedAPI:Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;

    .line 881
    sget-object v0, Lcom/sec/internal/ims/cmstore/strategy/ATTCmStrategy;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fail count keep same["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/sec/internal/ims/cmstore/strategy/ATTCmStrategy;->mApiFailCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "], lastFailedAPI: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/strategy/ATTCmStrategy;->mLastFailedAPI:Ljava/lang/Class;

    .line 882
    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", currentFailedAPI: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 883
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 881
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 885
    :goto_0
    return-void
.end method

.method private initFailedCallFlowTranslator()V
    .locals 0

    .line 309
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/strategy/ATTCmStrategy;->initProvisionFailedCallFlowTranslator()V

    .line 310
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/strategy/ATTCmStrategy;->initOMAFailedCallFlowTranslator()V

    .line 311
    return-void
.end method

.method private initMessageAttributeRegistration()V
    .locals 3

    .line 757
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/strategy/ATTCmStrategy;->mMessageAttributeRegistration:Ljava/util/Map;

    .line 759
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/strategy/ATTCmStrategy;->mMessageAttributeRegistration:Ljava/util/Map;

    const-string v1, "$DATE"

    const-string v2, "Date"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 760
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/strategy/ATTCmStrategy;->mMessageAttributeRegistration:Ljava/util/Map;

    const-string v1, "$MESSAGE$CONTEXT"

    const-string v2, "Message-Context"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 761
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/strategy/ATTCmStrategy;->mMessageAttributeRegistration:Ljava/util/Map;

    const-string v1, "$DIRECTION"

    const-string v2, "Direction"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 762
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/strategy/ATTCmStrategy;->mMessageAttributeRegistration:Ljava/util/Map;

    const-string v1, "$FROM"

    const-string v2, "From"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 763
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/strategy/ATTCmStrategy;->mMessageAttributeRegistration:Ljava/util/Map;

    const-string v1, "$TO"

    const-string v2, "To"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 764
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/strategy/ATTCmStrategy;->mMessageAttributeRegistration:Ljava/util/Map;

    const-string v1, "$BCC"

    const-string v2, "Bcc"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 765
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/strategy/ATTCmStrategy;->mMessageAttributeRegistration:Ljava/util/Map;

    const-string v1, "$CC"

    const-string v2, "Cc"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 766
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/strategy/ATTCmStrategy;->mMessageAttributeRegistration:Ljava/util/Map;

    const-string v1, "$SUBJECT"

    const-string v2, "Subject"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 767
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/strategy/ATTCmStrategy;->mMessageAttributeRegistration:Ljava/util/Map;

    sget-object v1, Lcom/sec/internal/ims/cmstore/strategy/ATTCmStrategy$ATTAttributeNames;->is_cpm_group:Ljava/lang/String;

    const-string v2, "$IS$CPM$GROUP"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 768
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/strategy/ATTCmStrategy;->mMessageAttributeRegistration:Ljava/util/Map;

    sget-object v1, Lcom/sec/internal/ims/cmstore/strategy/ATTCmStrategy$ATTAttributeNames;->is_open_group:Ljava/lang/String;

    const-string v2, "$IS$OPEN$GROUP"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 769
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/strategy/ATTCmStrategy;->mMessageAttributeRegistration:Ljava/util/Map;

    const-string v1, "$TEXT$CONTENT"

    const-string v2, "TextContent"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 770
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/strategy/ATTCmStrategy;->mMessageAttributeRegistration:Ljava/util/Map;

    sget-object v1, Lcom/sec/internal/ims/cmstore/strategy/ATTCmStrategy$ATTAttributeNames;->contribution_id:Ljava/lang/String;

    const-string v2, "$CONTRIBUTION$ID"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 771
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/strategy/ATTCmStrategy;->mMessageAttributeRegistration:Ljava/util/Map;

    sget-object v1, Lcom/sec/internal/ims/cmstore/strategy/ATTCmStrategy$ATTAttributeNames;->conversation_id:Ljava/lang/String;

    const-string v2, "$CONVERSATION$ID"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 772
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/strategy/ATTCmStrategy;->mMessageAttributeRegistration:Ljava/util/Map;

    sget-object v1, Lcom/sec/internal/ims/cmstore/strategy/ATTCmStrategy$ATTAttributeNames;->inreplyto_contribution_Id:Ljava/lang/String;

    const-string v2, "$IN$REPLY$TO$CONTRIBUTION$ID"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 774
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/strategy/ATTCmStrategy;->mMessageAttributeRegistration:Ljava/util/Map;

    sget-object v1, Lcom/sec/internal/ims/cmstore/strategy/ATTCmStrategy$ATTAttributeNames;->udh:Ljava/lang/String;

    const-string v2, "$UDH"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 775
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/strategy/ATTCmStrategy;->mMessageAttributeRegistration:Ljava/util/Map;

    sget-object v1, Lcom/sec/internal/ims/cmstore/strategy/ATTCmStrategy$ATTAttributeNames;->call_disposition:Ljava/lang/String;

    const-string v2, "$CALL$DISPOSTITION"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 776
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/strategy/ATTCmStrategy;->mMessageAttributeRegistration:Ljava/util/Map;

    sget-object v1, Lcom/sec/internal/ims/cmstore/strategy/ATTCmStrategy$ATTAttributeNames;->call_duration:Ljava/lang/String;

    const-string v2, "$CALL$DURATION"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 777
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/strategy/ATTCmStrategy;->mMessageAttributeRegistration:Ljava/util/Map;

    sget-object v1, Lcom/sec/internal/ims/cmstore/strategy/ATTCmStrategy$ATTAttributeNames;->disposition_type:Ljava/lang/String;

    const-string v2, "$DISPOSITION$TYPE"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 778
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/strategy/ATTCmStrategy;->mMessageAttributeRegistration:Ljava/util/Map;

    sget-object v1, Lcom/sec/internal/ims/cmstore/strategy/ATTCmStrategy$ATTAttributeNames;->disposition_status:Ljava/lang/String;

    const-string v2, "$DISPOSITION$STATUS"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 779
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/strategy/ATTCmStrategy;->mMessageAttributeRegistration:Ljava/util/Map;

    sget-object v1, Lcom/sec/internal/ims/cmstore/strategy/ATTCmStrategy$ATTAttributeNames;->disposition_original_message_iD:Ljava/lang/String;

    const-string v2, "$DISPOSITION$ORIGINAL$MESSAGEID"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 781
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/strategy/ATTCmStrategy;->mMessageAttributeRegistration:Ljava/util/Map;

    sget-object v1, Lcom/sec/internal/ims/cmstore/strategy/ATTCmStrategy$ATTAttributeNames;->disposition_original_to:Ljava/lang/String;

    const-string v2, "$DISPOSITION$ORIGINAL$TO"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 783
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/strategy/ATTCmStrategy;->mMessageAttributeRegistration:Ljava/util/Map;

    sget-object v1, Lcom/sec/internal/ims/cmstore/strategy/ATTCmStrategy$ATTAttributeNames;->multipartContentType:Ljava/lang/String;

    const-string v2, "$MULTIPARTCONTENTTYPE"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 785
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/strategy/ATTCmStrategy;->mMessageAttributeRegistration:Ljava/util/Map;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/strategy/ATTCmStrategy;->mMessageAttributeRegistration:Ljava/util/Map;

    .line 786
    return-void
.end method

.method private initOMAFailedCallFlowTranslator()V
    .locals 5

    .line 674
    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/strategy/ATTCmStrategy;->initOmaFailureCommonFlow()V

    .line 693
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/strategy/ATTCmStrategy;->mOmaCallFlowTranslator:Ljava/util/Map;

    new-instance v1, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/OmaErrorKey;

    const-class v2, Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageCreateLongPolling;

    .line 695
    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    const-class v3, Landroid/os/Handler;

    .line 696
    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x199

    invoke-direct {v1, v4, v2, v3}, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/OmaErrorKey;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->CHECK_SUBSCRIPTION_AND_START_LONG_POLLING:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    .line 697
    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 693
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 699
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/strategy/ATTCmStrategy;->mOmaCallFlowTranslator:Ljava/util/Map;

    new-instance v1, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/OmaErrorKey;

    const-class v2, Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageCreateLongPolling;

    .line 701
    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    const-class v3, Landroid/os/Handler;

    .line 702
    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x12e

    invoke-direct {v1, v4, v2, v3}, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/OmaErrorKey;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->CHECK_NOTIFICATION_CHANNEL:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    .line 703
    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 699
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 711
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/strategy/ATTCmStrategy;->mOmaCallFlowTranslator:Ljava/util/Map;

    new-instance v1, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/OmaErrorKey;

    const-class v2, Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageGetIndividualNotificationChannelInfo;

    .line 713
    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    const-class v3, Landroid/os/Handler;

    .line 714
    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x194

    invoke-direct {v1, v4, v2, v3}, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/OmaErrorKey;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->CREATE_NOTIFICATION_CHANNEL:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    .line 715
    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 711
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 717
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/strategy/ATTCmStrategy;->mOmaCallFlowTranslator:Ljava/util/Map;

    new-instance v1, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/OmaErrorKey;

    const-class v2, Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageGetActiveNotificationChannels;

    .line 719
    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    const-class v3, Landroid/os/Handler;

    .line 720
    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v4, v2, v3}, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/OmaErrorKey;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->CREATE_NOTIFICATION_CHANNEL:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    .line 721
    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 717
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 726
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/strategy/ATTCmStrategy;->mOmaCallFlowTranslator:Ljava/util/Map;

    new-instance v1, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/OmaErrorKey;

    const-class v2, Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageCreateLargeDataPolling;

    .line 728
    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    const-class v3, Landroid/os/Handler;

    .line 729
    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v4, v2, v3}, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/OmaErrorKey;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->DEFAULT:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    .line 730
    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 726
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 732
    return-void
.end method

.method private initOMASuccessfulCallFlowTranslator()V
    .locals 6

    .line 256
    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/strategy/ATTCmStrategy;->initOmaSuccessCommonFlow()V

    .line 275
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/strategy/ATTCmStrategy;->mOmaCallFlowTranslator:Ljava/util/Map;

    new-instance v1, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/OmaErrorKey;

    const-class v2, Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageCreateLongPolling;

    .line 277
    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    const-class v3, Landroid/os/Handler;

    .line 278
    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0xc8

    invoke-direct {v1, v4, v2, v3}, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/OmaErrorKey;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->CHECK_SUBSCRIPTION_AND_START_LONG_POLLING:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    .line 279
    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 275
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 283
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/strategy/ATTCmStrategy;->mOmaCallFlowTranslator:Ljava/util/Map;

    new-instance v1, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/OmaErrorKey;

    const-class v2, Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageCreateNotificationChannels;

    .line 285
    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    const-class v3, Landroid/os/Handler;

    .line 286
    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    const/16 v5, 0xc9

    invoke-direct {v1, v5, v2, v3}, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/OmaErrorKey;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->CHECK_SUBSCRIPTION_AND_START_LONG_POLLING:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    .line 287
    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 283
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 291
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/strategy/ATTCmStrategy;->mOmaCallFlowTranslator:Ljava/util/Map;

    new-instance v1, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/OmaErrorKey;

    const-class v2, Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageGetIndividualNotificationChannelInfo;

    .line 293
    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    const-class v3, Landroid/os/Handler;

    .line 294
    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v4, v2, v3}, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/OmaErrorKey;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->CHECK_SUBSCRIPTION_AND_START_LONG_POLLING:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    .line 295
    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 291
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 300
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/strategy/ATTCmStrategy;->mOmaCallFlowTranslator:Ljava/util/Map;

    new-instance v1, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/OmaErrorKey;

    const-class v2, Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageUpdateNotificationChannelLifeTime;

    .line 302
    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    const-class v3, Landroid/os/Handler;

    .line 303
    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v4, v2, v3}, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/OmaErrorKey;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->UPDATE_SUBSCRIPTION_CHANNEL:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    .line 304
    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 300
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 306
    return-void
.end method

.method private initOmaRetryVariables()V
    .locals 3

    .line 151
    invoke-static {}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getInstance()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getOmaRetryCounter()I

    move-result v0

    iput v0, p0, Lcom/sec/internal/ims/cmstore/strategy/ATTCmStrategy;->mApiFailCount:I

    .line 152
    sget-object v0, Lcom/sec/internal/ims/cmstore/strategy/ATTCmStrategy;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OMA fail count is: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/sec/internal/ims/cmstore/strategy/ATTCmStrategy;->mApiFailCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    return-void
.end method

.method private initProvisionFailedCallFlowTranslator()V
    .locals 22

    .line 317
    move-object/from16 v0, p0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, v0, Lcom/sec/internal/ims/cmstore/strategy/ATTCmStrategy;->sErrorMsgsTranslator:Ljava/util/Map;

    .line 344
    iget-object v1, v0, Lcom/sec/internal/ims/cmstore/strategy/ATTCmStrategy;->sErrorMsgsTranslator:Ljava/util/Map;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    iput-object v1, v0, Lcom/sec/internal/ims/cmstore/strategy/ATTCmStrategy;->sErrorMsgsTranslator:Ljava/util/Map;

    .line 346
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, v0, Lcom/sec/internal/ims/cmstore/strategy/ATTCmStrategy;->mFailedCallFlowTranslator:Ljava/util/Map;

    .line 351
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 352
    .local v1, "errZcode":Ljava/util/List;, "Ljava/util/List<Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule;>;"
    iget-object v2, v0, Lcom/sec/internal/ims/cmstore/strategy/ATTCmStrategy;->mFailedCallFlowTranslator:Ljava/util/Map;

    const-class v3, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqZCode;

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 357
    new-instance v9, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorMsg;

    sget-object v2, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorType;->PROVISIONING:Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorType;

    const/4 v3, 0x0

    invoke-direct {v9, v2, v3}, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorMsg;-><init>(Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorType;I)V

    .line 363
    .local v9, "temp":Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorMsg;
    new-instance v2, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule;

    sget-object v6, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule$RetryAttribute;->RETRY_FORBIDDEN:Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule$RetryAttribute;

    sget-object v4, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->ZCODE_ERROR_201:Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;

    .line 365
    invoke-virtual {v4}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->getId()I

    move-result v7

    sget-object v4, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->ZCODE_ERROR_201:Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;

    .line 366
    invoke-virtual {v4}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->getId()I

    move-result v8

    const-string v5, "201"

    move-object v4, v2

    invoke-direct/range {v4 .. v9}, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule;-><init>(Ljava/lang/String;Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule$RetryAttribute;IILcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorMsg;)V

    .line 363
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 369
    new-instance v2, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule;

    sget-object v12, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule$RetryAttribute;->RETRY_ALLOW:Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule$RetryAttribute;

    sget-object v4, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->CHK_PHONE_ACCOUNT:Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;

    .line 372
    invoke-virtual {v4}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->getId()I

    move-result v13

    sget-object v4, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->AUTH_ERR:Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;

    .line 373
    invoke-virtual {v4}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->getId()I

    move-result v14

    const-string v11, "default_error_type"

    const/4 v15, 0x0

    move-object v10, v2

    invoke-direct/range {v10 .. v15}, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule;-><init>(Ljava/lang/String;Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule$RetryAttribute;IILcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorMsg;)V

    .line 369
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 376
    new-instance v2, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule;

    sget-object v18, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule$RetryAttribute;->RETRY_USE_HEADER_VALUE:Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule$RetryAttribute;

    sget-object v4, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->REQ_AUTH_ZCODE:Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;

    .line 378
    invoke-virtual {v4}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->getId()I

    move-result v19

    sget-object v4, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->AUTH_ERR:Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;

    .line 379
    invoke-virtual {v4}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->getId()I

    move-result v20

    const-string v17, "RetryAfterRule"

    const/16 v21, 0x0

    move-object/from16 v16, v2

    invoke-direct/range {v16 .. v21}, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule;-><init>(Ljava/lang/String;Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule$RetryAttribute;IILcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorMsg;)V

    .line 376
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 384
    .end local v1    # "errZcode":Ljava/util/List;, "Ljava/util/List<Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule;>;"
    .end local v9    # "temp":Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorMsg;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 385
    .local v1, "errToken":Ljava/util/List;, "Ljava/util/List<Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule;>;"
    iget-object v2, v0, Lcom/sec/internal/ims/cmstore/strategy/ATTCmStrategy;->mFailedCallFlowTranslator:Ljava/util/Map;

    const-class v4, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqToken;

    .line 386
    invoke-interface {v2, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 388
    new-instance v2, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule;

    sget-object v7, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule$RetryAttribute;->RETRY_ALLOW:Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule$RetryAttribute;

    sget-object v4, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->REQ_AUTH_ZCODE:Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;

    .line 391
    invoke-virtual {v4}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->getId()I

    move-result v8

    sget-object v4, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->AUTH_ERR:Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;

    .line 392
    invoke-virtual {v4}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->getId()I

    move-result v9

    const-string v6, "default_error_type"

    const/4 v10, 0x0

    move-object v5, v2

    invoke-direct/range {v5 .. v10}, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule;-><init>(Ljava/lang/String;Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule$RetryAttribute;IILcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorMsg;)V

    .line 388
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 394
    new-instance v2, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule;

    sget-object v13, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule$RetryAttribute;->RETRY_USE_HEADER_VALUE:Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule$RetryAttribute;

    sget-object v4, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->REQ_ATS_TOKEN:Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;

    .line 396
    invoke-virtual {v4}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->getId()I

    move-result v14

    sget-object v4, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->AUTH_ERR:Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;

    .line 397
    invoke-virtual {v4}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->getId()I

    move-result v15

    const-string v12, "RetryAfterRule"

    const/16 v16, 0x0

    move-object v11, v2

    invoke-direct/range {v11 .. v16}, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule;-><init>(Ljava/lang/String;Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule$RetryAttribute;IILcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorMsg;)V

    .line 394
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 408
    .end local v1    # "errToken":Ljava/util/List;, "Ljava/util/List<Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 409
    .local v1, "errReqCookie":Ljava/util/List;, "Ljava/util/List<Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule;>;"
    iget-object v2, v0, Lcom/sec/internal/ims/cmstore/strategy/ATTCmStrategy;->mFailedCallFlowTranslator:Ljava/util/Map;

    const-class v4, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqSession;

    invoke-interface {v2, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 411
    new-instance v2, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule;

    sget-object v7, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule$RetryAttribute;->RETRY_ALLOW:Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule$RetryAttribute;

    sget-object v4, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->REQ_SESSION_GEN:Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;

    .line 414
    invoke-virtual {v4}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->getId()I

    move-result v8

    sget-object v4, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->AUTH_ERR:Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;

    invoke-virtual {v4}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->getId()I

    move-result v9

    const-string v6, "default_error_type"

    move-object v5, v2

    invoke-direct/range {v5 .. v10}, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule;-><init>(Ljava/lang/String;Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule$RetryAttribute;IILcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorMsg;)V

    .line 411
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 417
    new-instance v2, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule;

    sget-object v13, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule$RetryAttribute;->RETRY_ALLOW:Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule$RetryAttribute;

    sget-object v4, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->REQ_AUTH_ZCODE:Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;

    .line 419
    invoke-virtual {v4}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->getId()I

    move-result v14

    sget-object v4, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->AUTH_ERR:Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;

    .line 420
    invoke-virtual {v4}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->getId()I

    move-result v15

    const-string v12, "201"

    move-object v11, v2

    invoke-direct/range {v11 .. v16}, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule;-><init>(Ljava/lang/String;Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule$RetryAttribute;IILcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorMsg;)V

    .line 417
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 423
    new-instance v2, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule;

    sget-object v6, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule$RetryAttribute;->RETRY_ALLOW:Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule$RetryAttribute;

    sget-object v4, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->REQ_AUTH_ZCODE:Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;

    .line 425
    invoke-virtual {v4}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->getId()I

    move-result v7

    sget-object v4, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->AUTH_ERR:Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;

    .line 426
    invoke-virtual {v4}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->getId()I

    move-result v8

    const-string v5, "202"

    const/4 v9, 0x0

    move-object v4, v2

    invoke-direct/range {v4 .. v9}, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule;-><init>(Ljava/lang/String;Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule$RetryAttribute;IILcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorMsg;)V

    .line 423
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 428
    new-instance v2, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule;

    sget-object v12, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule$RetryAttribute;->RETRY_USE_HEADER_VALUE:Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule$RetryAttribute;

    sget-object v4, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->REQ_SESSION_GEN:Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;

    .line 430
    invoke-virtual {v4}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->getId()I

    move-result v13

    sget-object v4, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->AUTH_ERR:Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;

    .line 431
    invoke-virtual {v4}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->getId()I

    move-result v14

    const-string v11, "RetryAfterRule"

    const/4 v15, 0x0

    move-object v10, v2

    invoke-direct/range {v10 .. v15}, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule;-><init>(Ljava/lang/String;Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule$RetryAttribute;IILcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorMsg;)V

    .line 428
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 442
    .end local v1    # "errReqCookie":Ljava/util/List;, "Ljava/util/List<Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 443
    .local v1, "errEligibility":Ljava/util/List;, "Ljava/util/List<Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule;>;"
    iget-object v2, v0, Lcom/sec/internal/ims/cmstore/strategy/ATTCmStrategy;->mFailedCallFlowTranslator:Ljava/util/Map;

    const-class v4, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestAccountEligibility;

    invoke-interface {v2, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 451
    new-instance v10, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorMsg;

    sget-object v2, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorType;->PROVISIONING_BLOCKED:Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorType;

    invoke-direct {v10, v2, v3}, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorMsg;-><init>(Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorType;I)V

    .line 453
    .local v10, "temp":Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorMsg;
    const/4 v2, -0x1

    .line 454
    .local v2, "TODO":I
    new-instance v11, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule;

    sget-object v6, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule$RetryAttribute;->RETRY_ALLOW:Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule$RetryAttribute;

    sget-object v4, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->REQ_SESSION_GEN:Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;

    .line 456
    invoke-virtual {v4}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->getId()I

    move-result v7

    sget-object v4, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->PROVISION_ERR:Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;

    invoke-virtual {v4}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->getId()I

    move-result v8

    const-string v5, "CpsDefaultError"

    move-object v4, v11

    invoke-direct/range {v4 .. v9}, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule;-><init>(Ljava/lang/String;Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule$RetryAttribute;IILcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorMsg;)V

    .line 454
    invoke-interface {v1, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 458
    new-instance v4, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule;

    sget-object v7, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule$RetryAttribute;->RETRY_FORBIDDEN:Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule$RetryAttribute;

    sget-object v5, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->CPS_PROVISION_SHUTDOWN:Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;

    .line 460
    invoke-virtual {v5}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->getId()I

    move-result v9

    const-string v6, "CPS.SVC-1015"

    const/4 v8, -0x1

    move-object v5, v4

    invoke-direct/range {v5 .. v10}, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule;-><init>(Ljava/lang/String;Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule$RetryAttribute;IILcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorMsg;)V

    .line 458
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 461
    new-instance v4, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule;

    sget-object v13, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule$RetryAttribute;->RETRY_FORBIDDEN:Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule$RetryAttribute;

    sget-object v5, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->ACCOUNT_NOT_ELIGIBLE:Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;

    .line 463
    invoke-virtual {v5}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->getId()I

    move-result v15

    const-string v12, "not eligible"

    const/4 v14, -0x1

    move-object v11, v4

    move-object/from16 v16, v10

    invoke-direct/range {v11 .. v16}, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule;-><init>(Ljava/lang/String;Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule$RetryAttribute;IILcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorMsg;)V

    .line 461
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 471
    new-instance v4, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule;

    sget-object v18, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule$RetryAttribute;->RETRY_USE_HEADER_VALUE:Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule$RetryAttribute;

    sget-object v5, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->REQ_ACCOUNT_ELIGIBILITY:Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;

    .line 473
    invoke-virtual {v5}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->getId()I

    move-result v19

    sget-object v5, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->PROVISION_ERR:Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;

    .line 474
    invoke-virtual {v5}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->getId()I

    move-result v20

    const-string v17, "RetryAfterRule"

    move-object/from16 v16, v4

    invoke-direct/range {v16 .. v21}, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule;-><init>(Ljava/lang/String;Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule$RetryAttribute;IILcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorMsg;)V

    .line 471
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 479
    .end local v1    # "errEligibility":Ljava/util/List;, "Ljava/util/List<Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule;>;"
    .end local v2    # "TODO":I
    .end local v10    # "temp":Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorMsg;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 480
    .local v1, "errCheckAccount":Ljava/util/List;, "Ljava/util/List<Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule;>;"
    iget-object v2, v0, Lcom/sec/internal/ims/cmstore/strategy/ATTCmStrategy;->mFailedCallFlowTranslator:Ljava/util/Map;

    const-class v4, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestAccount;

    invoke-interface {v2, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 489
    const/4 v2, -0x1

    .line 490
    .restart local v2    # "TODO":I
    new-instance v9, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorMsg;

    sget-object v4, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorType;->PROVISIONING_BLOCKED:Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorType;

    invoke-direct {v9, v4, v3}, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorMsg;-><init>(Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorType;I)V

    .line 492
    .restart local v9    # "temp":Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorMsg;
    new-instance v3, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule;

    sget-object v12, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule$RetryAttribute;->RETRY_ALLOW:Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule$RetryAttribute;

    sget-object v4, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->REQ_SESSION_GEN:Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;

    .line 494
    invoke-virtual {v4}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->getId()I

    move-result v13

    sget-object v4, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->PROVISION_ERR:Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;

    invoke-virtual {v4}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->getId()I

    move-result v14

    const-string v11, "CpsDefaultError"

    const/4 v15, 0x0

    move-object v10, v3

    invoke-direct/range {v10 .. v15}, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule;-><init>(Ljava/lang/String;Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule$RetryAttribute;IILcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorMsg;)V

    .line 492
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 495
    new-instance v3, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule;

    sget-object v6, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule$RetryAttribute;->RETRY_FORBIDDEN:Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule$RetryAttribute;

    sget-object v4, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->CPS_PROVISION_SHUTDOWN:Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;

    .line 497
    invoke-virtual {v4}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->getId()I

    move-result v8

    const-string v5, "CPS.SVC-1015"

    const/4 v7, -0x1

    move-object v4, v3

    invoke-direct/range {v4 .. v9}, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule;-><init>(Ljava/lang/String;Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule$RetryAttribute;IILcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorMsg;)V

    .line 495
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 498
    new-instance v3, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule;

    sget-object v12, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule$RetryAttribute;->RETRY_ALLOW:Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule$RetryAttribute;

    sget-object v4, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->REQ_SESSION_GEN:Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;

    .line 501
    invoke-virtual {v4}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->getId()I

    move-result v13

    sget-object v4, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->PROVISION_ERR:Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;

    invoke-virtual {v4}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->getId()I

    move-result v14

    const-string v11, "default_error_type"

    move-object v10, v3

    invoke-direct/range {v10 .. v15}, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule;-><init>(Ljava/lang/String;Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule$RetryAttribute;IILcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorMsg;)V

    .line 498
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 503
    new-instance v3, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule;

    sget-object v18, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule$RetryAttribute;->RETRY_USE_HEADER_VALUE:Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule$RetryAttribute;

    sget-object v4, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->REQ_SERVICE_ACCOUNT:Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;

    .line 505
    invoke-virtual {v4}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->getId()I

    move-result v19

    sget-object v4, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->PROVISION_ERR:Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;

    .line 506
    invoke-virtual {v4}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->getId()I

    move-result v20

    const-string v17, "RetryAfterRule"

    move-object/from16 v16, v3

    invoke-direct/range {v16 .. v21}, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule;-><init>(Ljava/lang/String;Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule$RetryAttribute;IILcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorMsg;)V

    .line 503
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 511
    .end local v1    # "errCheckAccount":Ljava/util/List;, "Ljava/util/List<Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule;>;"
    .end local v2    # "TODO":I
    .end local v9    # "temp":Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorMsg;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 512
    .local v1, "errMsSession":Ljava/util/List;, "Ljava/util/List<Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule;>;"
    iget-object v2, v0, Lcom/sec/internal/ims/cmstore/strategy/ATTCmStrategy;->mFailedCallFlowTranslator:Ljava/util/Map;

    const-class v3, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestHUIToken;

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 514
    new-instance v2, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule;

    sget-object v6, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule$RetryAttribute;->RETRY_ALLOW:Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule$RetryAttribute;

    sget-object v3, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->REQ_ACCOUNT_ELIGIBILITY:Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;

    .line 517
    invoke-virtual {v3}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->getId()I

    move-result v7

    sget-object v3, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->ACCESS_ERR:Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;

    .line 518
    invoke-virtual {v3}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->getId()I

    move-result v8

    const-string v5, "ENCOREESB.SECURITY-6014"

    const/4 v9, 0x0

    move-object v4, v2

    invoke-direct/range {v4 .. v9}, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule;-><init>(Ljava/lang/String;Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule$RetryAttribute;IILcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorMsg;)V

    .line 514
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 520
    new-instance v2, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule;

    sget-object v12, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule$RetryAttribute;->RETRY_ALLOW:Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule$RetryAttribute;

    sget-object v3, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->LAST_RETRY_CREATE_ACCOUNT:Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;

    .line 522
    invoke-virtual {v3}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->getId()I

    move-result v13

    sget-object v3, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->ACCESS_ERR:Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;

    .line 523
    invoke-virtual {v3}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->getId()I

    move-result v14

    const-string v11, "Last_Retry_Create_Account"

    move-object v10, v2

    invoke-direct/range {v10 .. v15}, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule;-><init>(Ljava/lang/String;Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule$RetryAttribute;IILcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorMsg;)V

    .line 520
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 525
    new-instance v2, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule;

    sget-object v5, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule$RetryAttribute;->RETRY_ALLOW:Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule$RetryAttribute;

    sget-object v3, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->REQ_SESSION_GEN:Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;

    .line 527
    invoke-virtual {v3}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->getId()I

    move-result v6

    sget-object v3, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->ACCESS_ERR:Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;

    invoke-virtual {v3}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->getId()I

    move-result v7

    const-string v4, "ERR_HUITOKEN_JSON"

    const/4 v8, 0x0

    move-object v3, v2

    invoke-direct/range {v3 .. v8}, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule;-><init>(Ljava/lang/String;Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule$RetryAttribute;IILcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorMsg;)V

    .line 525
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 529
    new-instance v2, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule;

    sget-object v11, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule$RetryAttribute;->RETRY_ALLOW:Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule$RetryAttribute;

    sget-object v3, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->REQ_SESSION_GEN:Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;

    .line 532
    invoke-virtual {v3}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->getId()I

    move-result v12

    sget-object v3, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->ACCESS_ERR:Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;

    invoke-virtual {v3}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->getId()I

    move-result v13

    const-string v10, "default_error_type"

    const/4 v14, 0x0

    move-object v9, v2

    invoke-direct/range {v9 .. v14}, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule;-><init>(Ljava/lang/String;Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule$RetryAttribute;IILcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorMsg;)V

    .line 529
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 534
    new-instance v2, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule;

    sget-object v5, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule$RetryAttribute;->RETRY_USE_HEADER_VALUE:Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule$RetryAttribute;

    sget-object v3, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->REQ_HUI_TOKEN:Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;

    .line 536
    invoke-virtual {v3}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->getId()I

    move-result v6

    sget-object v3, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->ACCESS_ERR:Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;

    .line 537
    invoke-virtual {v3}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->getId()I

    move-result v7

    const-string v4, "RetryAfterRule"

    move-object v3, v2

    invoke-direct/range {v3 .. v8}, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule;-><init>(Ljava/lang/String;Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule$RetryAttribute;IILcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorMsg;)V

    .line 534
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 543
    .end local v1    # "errMsSession":Ljava/util/List;, "Ljava/util/List<Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 544
    .local v1, "errTC":Ljava/util/List;, "Ljava/util/List<Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule;>;"
    iget-object v2, v0, Lcom/sec/internal/ims/cmstore/strategy/ATTCmStrategy;->mFailedCallFlowTranslator:Ljava/util/Map;

    const-class v3, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestTC;

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 555
    const/4 v2, -0x1

    .line 557
    .restart local v2    # "TODO":I
    new-instance v9, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule;

    sget-object v5, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule$RetryAttribute;->RETRY_ALLOW:Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule$RetryAttribute;

    sget-object v3, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->REQ_SESSION_GEN:Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;

    .line 559
    invoke-virtual {v3}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->getId()I

    move-result v6

    sget-object v3, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->PROVISION_ERR:Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;

    .line 560
    invoke-virtual {v3}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->getId()I

    move-result v7

    const-string v4, "CpsDefaultError"

    move-object v3, v9

    invoke-direct/range {v3 .. v8}, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule;-><init>(Ljava/lang/String;Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule$RetryAttribute;IILcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorMsg;)V

    .line 557
    invoke-interface {v1, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 561
    new-instance v3, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule;

    sget-object v12, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule$RetryAttribute;->RETRY_FORBIDDEN:Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule$RetryAttribute;

    sget-object v4, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->CPS_PROVISION_SHUTDOWN:Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;

    .line 563
    invoke-virtual {v4}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->getId()I

    move-result v13

    const-string v11, "CPS.SVC-1015"

    const/4 v14, -0x1

    move-object v10, v3

    invoke-direct/range {v10 .. v15}, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule;-><init>(Ljava/lang/String;Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule$RetryAttribute;IILcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorMsg;)V

    .line 561
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 565
    new-instance v3, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule;

    sget-object v6, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule$RetryAttribute;->RETRY_USE_HEADER_VALUE:Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule$RetryAttribute;

    sget-object v4, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->REQ_GET_TC:Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;

    .line 567
    invoke-virtual {v4}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->getId()I

    move-result v7

    sget-object v4, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->PROVISION_ERR:Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;

    invoke-virtual {v4}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->getId()I

    move-result v8

    const-string v5, "RetryAfterRule"

    const/4 v9, 0x0

    move-object v4, v3

    invoke-direct/range {v4 .. v9}, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule;-><init>(Ljava/lang/String;Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule$RetryAttribute;IILcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorMsg;)V

    .line 565
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 578
    .end local v1    # "errTC":Ljava/util/List;, "Ljava/util/List<Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule;>;"
    .end local v2    # "TODO":I
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 579
    .local v1, "errCreateAccount":Ljava/util/List;, "Ljava/util/List<Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule;>;"
    iget-object v2, v0, Lcom/sec/internal/ims/cmstore/strategy/ATTCmStrategy;->mFailedCallFlowTranslator:Ljava/util/Map;

    const-class v3, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestCreateAccount;

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 582
    new-instance v2, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule;

    sget-object v6, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule$RetryAttribute;->RETRY_ALLOW:Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule$RetryAttribute;

    sget-object v3, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->REQ_GET_TC:Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;

    .line 583
    invoke-virtual {v3}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->getId()I

    move-result v7

    sget-object v3, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->PROVISION_ERR:Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;

    .line 584
    invoke-virtual {v3}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->getId()I

    move-result v8

    const-string v5, "CPS.SVC-1007"

    move-object v4, v2

    invoke-direct/range {v4 .. v9}, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule;-><init>(Ljava/lang/String;Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule$RetryAttribute;IILcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorMsg;)V

    .line 582
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 586
    new-instance v2, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule;

    sget-object v12, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule$RetryAttribute;->RETRY_ALLOW:Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule$RetryAttribute;

    sget-object v3, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->REQ_GET_TC:Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;

    .line 587
    invoke-virtual {v3}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->getId()I

    move-result v13

    sget-object v3, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->PROVISION_ERR:Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;

    .line 588
    invoke-virtual {v3}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->getId()I

    move-result v14

    const-string v11, "CPS.SVC-1008"

    move-object v10, v2

    invoke-direct/range {v10 .. v15}, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule;-><init>(Ljava/lang/String;Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule$RetryAttribute;IILcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorMsg;)V

    .line 586
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 590
    new-instance v2, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule;

    sget-object v5, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule$RetryAttribute;->RETRY_ALLOW:Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule$RetryAttribute;

    sget-object v3, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->REQ_SESSION_GEN:Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;

    .line 592
    invoke-virtual {v3}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->getId()I

    move-result v6

    sget-object v3, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->PROVISION_ERR:Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;

    invoke-virtual {v3}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->getId()I

    move-result v7

    const-string v4, "CpsDefaultError"

    const/4 v8, 0x0

    move-object v3, v2

    invoke-direct/range {v3 .. v8}, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule;-><init>(Ljava/lang/String;Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule$RetryAttribute;IILcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorMsg;)V

    .line 590
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 594
    new-instance v2, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule;

    sget-object v11, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule$RetryAttribute;->RETRY_USE_HEADER_VALUE:Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule$RetryAttribute;

    sget-object v3, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->REQ_CREATE_ACCOUNT:Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;

    .line 596
    invoke-virtual {v3}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->getId()I

    move-result v12

    sget-object v3, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->PROVISION_ERR:Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;

    .line 597
    invoke-virtual {v3}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->getId()I

    move-result v13

    const-string v10, "RetryAfterRule"

    const/4 v14, 0x0

    move-object v9, v2

    invoke-direct/range {v9 .. v14}, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule;-><init>(Ljava/lang/String;Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule$RetryAttribute;IILcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorMsg;)V

    .line 594
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 602
    .end local v1    # "errCreateAccount":Ljava/util/List;, "Ljava/util/List<Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 603
    .local v1, "errRequestDeleteAccount":Ljava/util/List;, "Ljava/util/List<Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule;>;"
    iget-object v2, v0, Lcom/sec/internal/ims/cmstore/strategy/ATTCmStrategy;->mFailedCallFlowTranslator:Ljava/util/Map;

    const-class v3, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestDeleteAccount;

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 606
    new-instance v2, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule;

    sget-object v6, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule$RetryAttribute;->RETRY_ALLOW:Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule$RetryAttribute;

    sget-object v3, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->REQ_SESSION_GEN:Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;

    .line 609
    invoke-virtual {v3}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->ordinal()I

    move-result v7

    sget-object v3, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->STOP_BACKUP_ERR:Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;

    invoke-virtual {v3}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->getId()I

    move-result v8

    const-string v5, "default_error_type"

    const/4 v9, 0x0

    move-object v4, v2

    invoke-direct/range {v4 .. v9}, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule;-><init>(Ljava/lang/String;Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule$RetryAttribute;IILcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorMsg;)V

    .line 606
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 611
    new-instance v2, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule;

    sget-object v12, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule$RetryAttribute;->RETRY_USE_HEADER_VALUE:Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule$RetryAttribute;

    sget-object v3, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->REQ_DELETE_ACCOUNT:Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;

    .line 613
    invoke-virtual {v3}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->getId()I

    move-result v13

    sget-object v3, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->STOP_BACKUP_ERR:Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;

    .line 615
    invoke-virtual {v3}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->getId()I

    move-result v14

    const-string v11, "RetryAfterRule"

    move-object v10, v2

    invoke-direct/range {v10 .. v15}, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule;-><init>(Ljava/lang/String;Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule$RetryAttribute;IILcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorMsg;)V

    .line 611
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 623
    .end local v1    # "errRequestDeleteAccount":Ljava/util/List;, "Ljava/util/List<Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 624
    .local v1, "errRequestPat":Ljava/util/List;, "Ljava/util/List<Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule;>;"
    iget-object v2, v0, Lcom/sec/internal/ims/cmstore/strategy/ATTCmStrategy;->mFailedCallFlowTranslator:Ljava/util/Map;

    const-class v3, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestPat;

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 626
    new-instance v2, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule;

    sget-object v6, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule$RetryAttribute;->RETRY_ALLOW:Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule$RetryAttribute;

    sget-object v3, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->REQ_SESSION_GEN:Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;

    .line 629
    invoke-virtual {v3}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->ordinal()I

    move-result v7

    sget-object v3, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->PROVISION_ERR:Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;

    invoke-virtual {v3}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->getId()I

    move-result v8

    const-string v5, "default_error_type"

    move-object v4, v2

    invoke-direct/range {v4 .. v9}, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule;-><init>(Ljava/lang/String;Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule$RetryAttribute;IILcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorMsg;)V

    .line 626
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 630
    new-instance v2, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule;

    sget-object v12, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule$RetryAttribute;->RETRY_ALLOW:Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule$RetryAttribute;

    sget-object v3, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->REQ_SESSION_GEN:Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;

    .line 632
    invoke-virtual {v3}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->getId()I

    move-result v13

    sget-object v3, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->PROVISION_ERR:Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;

    invoke-virtual {v3}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->getId()I

    move-result v14

    const-string/jumbo v11, "wrong sessionID"

    move-object v10, v2

    invoke-direct/range {v10 .. v15}, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule;-><init>(Ljava/lang/String;Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule$RetryAttribute;IILcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorMsg;)V

    .line 630
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 634
    new-instance v2, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule;

    sget-object v5, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule$RetryAttribute;->RETRY_USE_HEADER_VALUE:Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule$RetryAttribute;

    sget-object v3, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->REQ_PAT:Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;

    .line 636
    invoke-virtual {v3}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->getId()I

    move-result v6

    sget-object v3, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->PROVISION_ERR:Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;

    invoke-virtual {v3}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->getId()I

    move-result v7

    const-string v4, "RetryAfterRule"

    const/4 v8, 0x0

    move-object v3, v2

    invoke-direct/range {v3 .. v8}, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule;-><init>(Ljava/lang/String;Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule$RetryAttribute;IILcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorMsg;)V

    .line 634
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 639
    .end local v1    # "errRequestPat":Ljava/util/List;, "Ljava/util/List<Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule;>;"
    iget-object v1, v0, Lcom/sec/internal/ims/cmstore/strategy/ATTCmStrategy;->mFailedCallFlowTranslator:Ljava/util/Map;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    iput-object v1, v0, Lcom/sec/internal/ims/cmstore/strategy/ATTCmStrategy;->mFailedCallFlowTranslator:Ljava/util/Map;

    .line 640
    return-void
.end method

.method private initProvisionSuccessfullCallFlowTranslator()V
    .locals 12

    .line 161
    const-string v0, "HAP.DEF"

    .line 163
    .local v0, "HAPPY_PATH_DEFAULT":Ljava/lang/String;
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/sec/internal/ims/cmstore/strategy/ATTCmStrategy;->mSuccessfullCallFlowTranslator:Ljava/util/Map;

    .line 172
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 173
    .local v1, "reqTokenFlow":Ljava/util/List;, "Ljava/util/List<Lcom/sec/internal/ims/cmstore/callHandling/successfullCall/SuccessCallFlow;>;"
    new-instance v2, Lcom/sec/internal/ims/cmstore/callHandling/successfullCall/SuccessCallFlow;

    sget-object v3, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->REQ_SESSION_GEN:Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;

    const-string v4, "HAP.DEF"

    invoke-direct {v2, v4, v3}, Lcom/sec/internal/ims/cmstore/callHandling/successfullCall/SuccessCallFlow;-><init>(Ljava/lang/String;Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 175
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/strategy/ATTCmStrategy;->mSuccessfullCallFlowTranslator:Ljava/util/Map;

    const-class v3, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqToken;

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 179
    .local v2, "reqSessionFlow":Ljava/util/List;, "Ljava/util/List<Lcom/sec/internal/ims/cmstore/callHandling/successfullCall/SuccessCallFlow;>;"
    new-instance v3, Lcom/sec/internal/ims/cmstore/callHandling/successfullCall/SuccessCallFlow;

    sget-object v5, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->REQ_ACCOUNT_ELIGIBILITY:Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;

    invoke-direct {v3, v4, v5}, Lcom/sec/internal/ims/cmstore/callHandling/successfullCall/SuccessCallFlow;-><init>(Ljava/lang/String;Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 181
    new-instance v3, Lcom/sec/internal/ims/cmstore/callHandling/successfullCall/SuccessCallFlow;

    sget-object v5, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->REQ_HUI_TOKEN:Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;

    const-string v6, "HAP.STEADY.STATE.REQ.HUIMSTOKEN"

    invoke-direct {v3, v6, v5}, Lcom/sec/internal/ims/cmstore/callHandling/successfullCall/SuccessCallFlow;-><init>(Ljava/lang/String;Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 183
    new-instance v3, Lcom/sec/internal/ims/cmstore/callHandling/successfullCall/SuccessCallFlow;

    sget-object v5, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->REQ_DELETE_ACCOUNT:Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;

    const-string v6, "HAP.DELETE.ACCOUNT"

    invoke-direct {v3, v6, v5}, Lcom/sec/internal/ims/cmstore/callHandling/successfullCall/SuccessCallFlow;-><init>(Ljava/lang/String;Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 185
    new-instance v3, Lcom/sec/internal/ims/cmstore/callHandling/successfullCall/SuccessCallFlow;

    sget-object v5, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->REQ_CREATE_ACCOUNT:Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;

    const-string v6, "HAP.CREATE.ACCOUNT"

    invoke-direct {v3, v6, v5}, Lcom/sec/internal/ims/cmstore/callHandling/successfullCall/SuccessCallFlow;-><init>(Ljava/lang/String;Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 187
    new-instance v3, Lcom/sec/internal/ims/cmstore/callHandling/successfullCall/SuccessCallFlow;

    sget-object v5, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->REQ_SERVICE_ACCOUNT:Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;

    const-string v6, "HAP.GET.SVC.ACCOUNT"

    invoke-direct {v3, v6, v5}, Lcom/sec/internal/ims/cmstore/callHandling/successfullCall/SuccessCallFlow;-><init>(Ljava/lang/String;Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 189
    new-instance v3, Lcom/sec/internal/ims/cmstore/callHandling/successfullCall/SuccessCallFlow;

    sget-object v5, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->REQ_GET_TC:Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;

    const-string v6, "HAP.GET.TC"

    invoke-direct {v3, v6, v5}, Lcom/sec/internal/ims/cmstore/callHandling/successfullCall/SuccessCallFlow;-><init>(Ljava/lang/String;Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 191
    iget-object v3, p0, Lcom/sec/internal/ims/cmstore/strategy/ATTCmStrategy;->mSuccessfullCallFlowTranslator:Ljava/util/Map;

    const-class v5, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqSession;

    invoke-interface {v3, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 196
    .local v3, "requestAccountEligibilityFlow":Ljava/util/List;, "Ljava/util/List<Lcom/sec/internal/ims/cmstore/callHandling/successfullCall/SuccessCallFlow;>;"
    new-instance v5, Lcom/sec/internal/ims/cmstore/callHandling/successfullCall/SuccessCallFlow;

    sget-object v6, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->REQ_SERVICE_ACCOUNT:Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;

    invoke-direct {v5, v4, v6}, Lcom/sec/internal/ims/cmstore/callHandling/successfullCall/SuccessCallFlow;-><init>(Ljava/lang/String;Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;)V

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 198
    iget-object v5, p0, Lcom/sec/internal/ims/cmstore/strategy/ATTCmStrategy;->mSuccessfullCallFlowTranslator:Ljava/util/Map;

    const-class v6, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestAccountEligibility;

    invoke-interface {v5, v6, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 218
    .local v5, "requestTCFlow":Ljava/util/List;, "Ljava/util/List<Lcom/sec/internal/ims/cmstore/callHandling/successfullCall/SuccessCallFlow;>;"
    new-instance v6, Lcom/sec/internal/ims/cmstore/callHandling/successfullCall/SuccessCallFlow;

    sget-object v7, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->REQ_CREATE_ACCOUNT:Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;

    invoke-direct {v6, v4, v7}, Lcom/sec/internal/ims/cmstore/callHandling/successfullCall/SuccessCallFlow;-><init>(Ljava/lang/String;Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 221
    iget-object v6, p0, Lcom/sec/internal/ims/cmstore/strategy/ATTCmStrategy;->mSuccessfullCallFlowTranslator:Ljava/util/Map;

    const-class v7, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestTC;

    invoke-interface {v6, v7, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 225
    .local v6, "requestCreateAccountFlow":Ljava/util/List;, "Ljava/util/List<Lcom/sec/internal/ims/cmstore/callHandling/successfullCall/SuccessCallFlow;>;"
    new-instance v7, Lcom/sec/internal/ims/cmstore/callHandling/successfullCall/SuccessCallFlow;

    sget-object v8, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->REQ_HUI_TOKEN:Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;

    invoke-direct {v7, v4, v8}, Lcom/sec/internal/ims/cmstore/callHandling/successfullCall/SuccessCallFlow;-><init>(Ljava/lang/String;Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;)V

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 228
    iget-object v7, p0, Lcom/sec/internal/ims/cmstore/strategy/ATTCmStrategy;->mSuccessfullCallFlowTranslator:Ljava/util/Map;

    const-class v8, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestCreateAccount;

    invoke-interface {v7, v8, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 231
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 233
    .local v7, "requestMsSessionFlow":Ljava/util/List;, "Ljava/util/List<Lcom/sec/internal/ims/cmstore/callHandling/successfullCall/SuccessCallFlow;>;"
    new-instance v8, Lcom/sec/internal/ims/cmstore/callHandling/successfullCall/SuccessCallFlow;

    sget-object v9, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->REQ_PAT:Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;

    invoke-direct {v8, v4, v9}, Lcom/sec/internal/ims/cmstore/callHandling/successfullCall/SuccessCallFlow;-><init>(Ljava/lang/String;Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;)V

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 235
    iget-object v8, p0, Lcom/sec/internal/ims/cmstore/strategy/ATTCmStrategy;->mSuccessfullCallFlowTranslator:Ljava/util/Map;

    const-class v9, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestHUIToken;

    invoke-interface {v8, v9, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 239
    .local v8, "requestPatFlow":Ljava/util/List;, "Ljava/util/List<Lcom/sec/internal/ims/cmstore/callHandling/successfullCall/SuccessCallFlow;>;"
    new-instance v9, Lcom/sec/internal/ims/cmstore/callHandling/successfullCall/SuccessCallFlow;

    sget-object v10, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->READY_PAT:Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;

    invoke-direct {v9, v4, v10}, Lcom/sec/internal/ims/cmstore/callHandling/successfullCall/SuccessCallFlow;-><init>(Ljava/lang/String;Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;)V

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 241
    iget-object v9, p0, Lcom/sec/internal/ims/cmstore/strategy/ATTCmStrategy;->mSuccessfullCallFlowTranslator:Ljava/util/Map;

    const-class v10, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestPat;

    invoke-interface {v9, v10, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 244
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 245
    .local v9, "deleteAccountFlow":Ljava/util/List;, "Ljava/util/List<Lcom/sec/internal/ims/cmstore/callHandling/successfullCall/SuccessCallFlow;>;"
    new-instance v10, Lcom/sec/internal/ims/cmstore/callHandling/successfullCall/SuccessCallFlow;

    sget-object v11, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->DELETE_ACCOUNT_SUCCESS:Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;

    invoke-direct {v10, v4, v11}, Lcom/sec/internal/ims/cmstore/callHandling/successfullCall/SuccessCallFlow;-><init>(Ljava/lang/String;Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;)V

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 247
    iget-object v4, p0, Lcom/sec/internal/ims/cmstore/strategy/ATTCmStrategy;->mSuccessfullCallFlowTranslator:Ljava/util/Map;

    const-class v10, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestDeleteAccount;

    invoke-interface {v4, v10, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 250
    iget-object v4, p0, Lcom/sec/internal/ims/cmstore/strategy/ATTCmStrategy;->mSuccessfullCallFlowTranslator:Ljava/util/Map;

    .line 251
    invoke-static {v4}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v4

    iput-object v4, p0, Lcom/sec/internal/ims/cmstore/strategy/ATTCmStrategy;->mSuccessfullCallFlowTranslator:Ljava/util/Map;

    .line 253
    return-void
.end method

.method private initStandardRetrySchedule()V
    .locals 7

    .line 735
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/strategy/ATTCmStrategy;->mStandardRetrySchedule:Ljava/util/Map;

    .line 737
    sget-boolean v0, Lcom/sec/internal/ims/cmstore/helper/DebugFlag;->DEBUG_RETRY_TIMELINE_FLAG:Z

    const/4 v1, 0x5

    .line 751
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 737
    const/4 v2, 0x4

    .line 749
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 737
    const/4 v3, 0x3

    .line 748
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 737
    const/4 v4, 0x2

    .line 747
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 737
    const/4 v5, 0x1

    .line 746
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 737
    const/4 v6, 0x0

    .line 745
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 737
    if-eqz v0, :cond_0

    .line 738
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/strategy/ATTCmStrategy;->mStandardRetrySchedule:Ljava/util/Map;

    invoke-interface {v0, v6, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 739
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/strategy/ATTCmStrategy;->mStandardRetrySchedule:Ljava/util/Map;

    const/16 v6, 0x1388

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 740
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/strategy/ATTCmStrategy;->mStandardRetrySchedule:Ljava/util/Map;

    const/16 v5, 0x2711

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 741
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/strategy/ATTCmStrategy;->mStandardRetrySchedule:Ljava/util/Map;

    const/16 v4, 0x2712

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 742
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/strategy/ATTCmStrategy;->mStandardRetrySchedule:Ljava/util/Map;

    const/16 v3, 0x2713

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 743
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/strategy/ATTCmStrategy;->mStandardRetrySchedule:Ljava/util/Map;

    const/16 v2, 0x2714

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 745
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/strategy/ATTCmStrategy;->mStandardRetrySchedule:Ljava/util/Map;

    invoke-interface {v0, v6, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 746
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/strategy/ATTCmStrategy;->mStandardRetrySchedule:Ljava/util/Map;

    const v6, 0x493e0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 747
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/strategy/ATTCmStrategy;->mStandardRetrySchedule:Ljava/util/Map;

    const v5, 0x1b7740

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 748
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/strategy/ATTCmStrategy;->mStandardRetrySchedule:Ljava/util/Map;

    const v4, 0xdbba00

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 749
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/strategy/ATTCmStrategy;->mStandardRetrySchedule:Ljava/util/Map;

    const v3, 0x2932e00

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 751
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/strategy/ATTCmStrategy;->mStandardRetrySchedule:Ljava/util/Map;

    const v2, 0x5265c00

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 753
    :goto_0
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/strategy/ATTCmStrategy;->mStandardRetrySchedule:Ljava/util/Map;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/strategy/ATTCmStrategy;->mStandardRetrySchedule:Ljava/util/Map;

    .line 754
    return-void
.end method

.method private initSuccessfulCallFlowTranslator()V
    .locals 0

    .line 156
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/strategy/ATTCmStrategy;->initProvisionSuccessfullCallFlowTranslator()V

    .line 157
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/strategy/ATTCmStrategy;->initOMASuccessfulCallFlowTranslator()V

    .line 158
    return-void
.end method


# virtual methods
.method public clearOmaRetryData()V
    .locals 0

    .line 965
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/strategy/ATTCmStrategy;->clearOmaRetryVariables()V

    .line 966
    return-void
.end method

.method public getAdaptedRetrySchedule(I)I
    .locals 5
    .param p1, "retryCounter"    # I

    .line 111
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/strategy/ATTCmStrategy;->mStandardRetrySchedule:Ljava/util/Map;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 115
    return v1

    .line 119
    :cond_0
    sget-boolean v0, Lcom/sec/internal/ims/cmstore/helper/DebugFlag;->DEBUG_RETRY_TIMELINE_FLAG:Z

    if-eqz v0, :cond_1

    .line 121
    invoke-static {p1}, Lcom/sec/internal/ims/cmstore/helper/DebugFlag;->getRetryTimeLine(I)I

    move-result v0

    return v0

    .line 132
    :cond_1
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/strategy/ATTCmStrategy;->mStandardRetrySchedule:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 133
    .local v0, "standardTimer":I
    new-instance v2, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-direct {v2, v3, v4}, Ljava/util/Random;-><init>(J)V

    .line 134
    .local v2, "rand":Ljava/util/Random;
    if-eqz p1, :cond_3

    const/4 v1, 0x1

    if-eq p1, v1, :cond_2

    const/4 v1, 0x2

    if-eq p1, v1, :cond_2

    const/4 v1, 0x3

    if-eq p1, v1, :cond_2

    const/4 v1, 0x4

    if-eq p1, v1, :cond_2

    .line 146
    return v0

    .line 143
    :cond_2
    int-to-float v1, v0

    invoke-virtual {v2}, Ljava/util/Random;->nextFloat()F

    move-result v3

    const/high16 v4, 0x3f800000    # 1.0f

    add-float/2addr v3, v4

    mul-float/2addr v1, v3

    float-to-double v3, v1

    invoke-static {v3, v4}, Ljava/lang/Math;->floor(D)D

    move-result-wide v3

    double-to-int v1, v3

    .line 144
    .local v1, "timer":I
    div-int/lit16 v3, v1, 0x3e8

    mul-int/lit16 v3, v3, 0x3e8

    return v3

    .line 138
    .end local v1    # "timer":I
    :cond_3
    const/16 v3, 0x3d

    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    add-int/2addr v3, v1

    mul-int/lit16 v3, v3, 0x3e8

    add-int/2addr v3, v0

    return v3
.end method

.method public getControllerOfLastFailedApi()Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;
    .locals 1

    .line 947
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/strategy/ATTCmStrategy;->mControllerOfLastFailedAPI:Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;

    return-object v0
.end method

.method public getLastFailedApi()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;",
            ">;"
        }
    .end annotation

    .line 952
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/strategy/ATTCmStrategy;->mLastFailedAPI:Ljava/lang/Class;

    return-object v0
.end method

.method public getNativeLine()Ljava/lang/String;
    .locals 1

    .line 830
    invoke-static {}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getInstance()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getUserTelCtn()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNcHost()Ljava/lang/String;
    .locals 4

    .line 807
    invoke-static {}, Lcom/sec/internal/ims/cmstore/helper/ATTGlobalVariables;->isGcmReplacePolling()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 808
    invoke-static {}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getInstance()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getNcHost()Ljava/lang/String;

    move-result-object v0

    .line 809
    .local v0, "ncHost":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 810
    sget-object v0, Lcom/sec/internal/ims/cmstore/helper/ATTGlobalVariables;->DEFAULT_PRODUCT_NC_HOST:Ljava/lang/String;

    .line 812
    :cond_0
    sget-object v1, Lcom/sec/internal/ims/cmstore/strategy/ATTCmStrategy;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "NC Host value="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 813
    return-object v0

    .line 815
    .end local v0    # "ncHost":Ljava/lang/String;
    :cond_1
    invoke-static {}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getInstance()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getNcHost()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNmsHost()Ljava/lang/String;
    .locals 4

    .line 791
    invoke-static {}, Lcom/sec/internal/ims/cmstore/helper/ATTGlobalVariables;->isGcmReplacePolling()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 792
    invoke-static {}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getInstance()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getNmsHost()Ljava/lang/String;

    move-result-object v0

    .line 793
    .local v0, "nmsHost":Ljava/lang/String;
    sget-object v1, Lcom/sec/internal/ims/cmstore/strategy/ATTCmStrategy;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "use host for gcm, NMS Host value="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 794
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 795
    invoke-static {}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getInstance()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getAcsNmsHost()Ljava/lang/String;

    move-result-object v0

    .line 796
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 797
    sget-object v0, Lcom/sec/internal/ims/cmstore/helper/ATTGlobalVariables;->DEFAULT_NMS_HOST:Ljava/lang/String;

    .line 800
    :cond_0
    return-object v0

    .line 802
    .end local v0    # "nmsHost":Ljava/lang/String;
    :cond_1
    invoke-static {}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getInstance()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getNmsHost()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOMAApiVersion()Ljava/lang/String;
    .locals 1

    .line 820
    const-string/jumbo v0, "v1"

    return-object v0
.end method

.method public getStoreName()Ljava/lang/String;
    .locals 1

    .line 825
    const-string v0, "base"

    return-object v0
.end method

.method public getTypeUsingMessageContext(Ljava/lang/String;)I
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 835
    const-string/jumbo v0, "pager-message"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 836
    const/4 v0, 0x3

    return v0

    .line 837
    :cond_0
    const-string v0, "multimedia-message"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 838
    const/4 v0, 0x4

    return v0

    .line 839
    :cond_1
    const-string v0, "chat-message"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 840
    const/16 v0, 0xb

    return v0

    .line 841
    :cond_2
    const-string v0, "file-message"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 842
    const/16 v0, 0xc

    return v0

    .line 843
    :cond_3
    const-string/jumbo v0, "standalone-message"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 844
    const/16 v0, 0xe

    return v0

    .line 845
    :cond_4
    const-string v0, "imdn-message"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 846
    const/16 v0, 0xd

    return v0

    .line 847
    :cond_5
    const-string/jumbo v0, "voice-message"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 848
    const/16 v0, 0x11

    return v0

    .line 849
    :cond_6
    const-string v0, "fax-message"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 850
    const/16 v0, 0x15

    return v0

    .line 852
    :cond_7
    const/4 v0, 0x0

    return v0
.end method

.method public getValidTokenByLine(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "linenum"    # Ljava/lang/String;

    .line 106
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Bearer PAT_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getInstance()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getValidPAT()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected initOmaFailureCommonFlow()V
    .locals 0

    .line 671
    return-void
.end method

.method protected isCarrierStrategyBreakCommonRule(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;I)Z
    .locals 3
    .param p1, "api"    # Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;
    .param p2, "statusCode"    # I

    .line 924
    sget-object v0, Lcom/sec/internal/ims/cmstore/strategy/ATTCmStrategy;->LOG_TAG:Ljava/lang/String;

    const-string v1, "isCarrierStrategyBreakCommonRule()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 925
    instance-of v0, p1, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageDeleteIndividualSubscription;

    const/16 v1, 0x12e

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    if-eq p2, v1, :cond_0

    .line 929
    return v2

    .line 931
    :cond_0
    instance-of v0, p1, Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageDeleteIndividualChannel;

    if-eqz v0, :cond_1

    if-eq p2, v1, :cond_1

    .line 935
    return v2

    .line 937
    :cond_1
    instance-of v0, p1, Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageCreateLargeDataPolling;

    if-eqz v0, :cond_2

    .line 939
    sget-object v0, Lcom/sec/internal/ims/cmstore/strategy/ATTCmStrategy;->LOG_TAG:Ljava/lang/String;

    const-string v1, "CloudMessageCreateLargeDataPolling, other status code"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 940
    return v2

    .line 942
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public onOmaApiCredentialFailed(Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;Lcom/sec/internal/interfaces/ims/cmstore/INetAPIEventListener;Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;I)V
    .locals 7
    .param p1, "controller"    # Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;
    .param p2, "netAPIEventListener"    # Lcom/sec/internal/interfaces/ims/cmstore/INetAPIEventListener;
    .param p3, "api"    # Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;
    .param p4, "delaySecs"    # I

    .line 891
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;->setOnApiSucceedOnceListener(Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler$OnApiSucceedOnceListener;)V

    .line 892
    iget v0, p0, Lcom/sec/internal/ims/cmstore/strategy/ATTCmStrategy;->mApiFailCount:I

    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/strategy/ATTCmStrategy;->getMaxRetryCounter()I

    move-result v1

    const-string v2, "OMA API failed "

    if-lt v0, v1, :cond_0

    .line 893
    sget-object v0, Lcom/sec/internal/ims/cmstore/strategy/ATTCmStrategy;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/sec/internal/ims/cmstore/strategy/ATTCmStrategy;->mApiFailCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " times before, OMA API retired more than "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 894
    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/strategy/ATTCmStrategy;->getMaxRetryCounter()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " times, pop up error screen"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 893
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 896
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/strategy/ATTCmStrategy;->clearOmaRetryVariables()V

    .line 897
    invoke-interface {p2}, Lcom/sec/internal/interfaces/ims/cmstore/INetAPIEventListener;->onOmaFailExceedMaxCount()V

    .line 898
    return-void

    .line 900
    :cond_0
    iget v0, p0, Lcom/sec/internal/ims/cmstore/strategy/ATTCmStrategy;->mApiFailCount:I

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/cmstore/strategy/ATTCmStrategy;->getAdaptedRetrySchedule(I)I

    move-result v0

    int-to-long v0, v0

    .line 901
    .local v0, "delay":J
    const-wide/16 v3, 0x3e8

    if-lez p4, :cond_1

    .line 902
    int-to-long v5, p4

    mul-long/2addr v5, v3

    invoke-static {v0, v1, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 904
    :cond_1
    sget-object v5, Lcom/sec/internal/ims/cmstore/strategy/ATTCmStrategy;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/sec/internal/ims/cmstore/strategy/ATTCmStrategy;->mApiFailCount:I

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " times beforeGo ahead fallback to SessionGen after "

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    div-long v2, v0, v3

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " seconds"

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 906
    new-instance v2, Landroid/os/Message;

    invoke-direct {v2}, Landroid/os/Message;-><init>()V

    .line 907
    .local v2, "msg":Landroid/os/Message;
    sget-object v3, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->CREDENTIAL_EXPIRED:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    invoke-virtual {v3}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result v3

    iput v3, v2, Landroid/os/Message;->what:I

    .line 908
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iput-object v3, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 909
    invoke-interface {p1, v2}, Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;->updateMessage(Landroid/os/Message;)Z

    .line 910
    invoke-direct {p0, p3, p1}, Lcom/sec/internal/ims/cmstore/strategy/ATTCmStrategy;->increaseFailedCount(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;)V

    .line 911
    return-void
.end method

.method public onOmaSuccess(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;)V
    .locals 2
    .param p1, "api"    # Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;

    .line 916
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/strategy/ATTCmStrategy;->mLastFailedAPI:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 917
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/strategy/ATTCmStrategy;->clearOmaRetryVariables()V

    .line 919
    :cond_0
    return-void
.end method

.method public shouldEnableNetAPIWorking(ZZZZ)Z
    .locals 1
    .param p1, "mIsNetworkValid"    # Z
    .param p2, "mIsDefaultMsgAppNative"    # Z
    .param p3, "mIsUserDeleteAccount"    # Z
    .param p4, "mIsProvisionSuccess"    # Z

    .line 860
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-nez p3, :cond_0

    if-eqz p4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
