.class public Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage;
.super Lcom/sec/internal/ims/servicemodules/im/FtMessage;
.source "FtHttpIncomingMessage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine;,
        Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$Builder2;,
        Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$Builder;
    }
.end annotation


# static fields
.field private static final EVENT_DOWNLOAD_CANCELED:I = 0x67

.field private static final EVENT_DOWNLOAD_COMPLETED:I = 0x66

.field private static final EVENT_DOWNLOAD_PROGRESS:I = 0x65

.field private static final EVENT_DOWNLOAD_THUMBNAIL_CANCELED:I = 0x6a

.field private static final EVENT_DOWNLOAD_THUMBNAIL_COMPLETED:I = 0x68

.field private static final EVENT_DOWNLOAD_THUMBNAIL_FAILED:I = 0x69

.field private static final EVENT_RETRY_DOWNLOAD:I = 0x6b

.field private static final EVENT_RETRY_THUMBNAIL_DOWNLOAD:I = 0x6c

.field private static final GSMA_FT_HTTP_URL_PATTERN:Ljava/util/regex/Pattern;

.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private mDataUrl:Ljava/net/URL;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 61
    const-class v0, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage;->LOG_TAG:Ljava/lang/String;

    .line 75
    nop

    .line 76
    const-string v0, "https://ftcontentserver\\.rcs\\.mnc\\d{3}\\.mcc\\d{3}\\.pub\\.3gppnetwork\\.org"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage;->GSMA_FT_HTTP_URL_PATTERN:Ljava/util/regex/Pattern;

    .line 75
    return-void
.end method

.method protected constructor <init>(Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$Builder;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$Builder<",
            "*>;)V"
        }
    .end annotation

    .line 81
    .local p1, "builder":Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$Builder;, "Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$Builder<*>;"
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;-><init>(Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;)V

    .line 82
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "data url="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$Builder;->access$000(Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$Builder;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    :try_start_0
    invoke-static {p1}, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$Builder;->access$000(Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$Builder;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 85
    new-instance v0, Ljava/net/URL;

    invoke-static {p1}, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$Builder;->access$000(Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$Builder;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage;->mDataUrl:Ljava/net/URL;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 90
    :cond_0
    nop

    .line 91
    return-void

    .line 87
    :catch_0
    move-exception v0

    .line 88
    .local v0, "e":Ljava/net/MalformedURLException;
    invoke-virtual {v0}, Ljava/net/MalformedURLException;->printStackTrace()V

    .line 89
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Malformed data url"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method static synthetic access$1200(Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage;)Ljava/net/URL;
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage;

    .line 60
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage;->mDataUrl:Ljava/net/URL;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage;Ljava/net/URL;)Ljava/net/URL;
    .locals 0
    .param p0, "x0"    # Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage;
    .param p1, "x1"    # Ljava/net/URL;

    .line 60
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage;->mDataUrl:Ljava/net/URL;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage;
    .param p1, "x1"    # Ljava/lang/String;

    .line 60
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage;->isFtHttpUrlTrusted(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$800()Ljava/lang/String;
    .locals 1

    .line 60
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static builder()Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$Builder<",
            "*>;"
        }
    .end annotation

    .line 94
    new-instance v0, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$Builder2;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$Builder2;-><init>(Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$1;)V

    return-object v0
.end method

.method private isFtHttpUrlTrusted(Ljava/lang/String;)Z
    .locals 5
    .param p1, "url"    # Ljava/lang/String;

    .line 128
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage;->GSMA_FT_HTTP_URL_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 129
    .local v0, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 130
    return v2

    .line 132
    :cond_0
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage;->getRcsStrategy()Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object v1

    const-string v3, "fthttp_non_standard_urls"

    invoke-interface {v1, v3}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->stringArraySetting(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 133
    .local v3, "template":Ljava/lang/String;
    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 134
    return v2

    .line 136
    .end local v3    # "template":Ljava/lang/String;
    :cond_1
    goto :goto_0

    .line 137
    :cond_2
    const/4 v1, 0x0

    return v1
.end method


# virtual methods
.method protected createFtStateMachine(Ljava/lang/String;Landroid/os/Looper;)Lcom/sec/internal/ims/servicemodules/im/FtMessage$FtStateMachine;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "looper"    # Landroid/os/Looper;

    .line 142
    new-instance v0, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FtHttpIncomingMessage#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1, p2}, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine;-><init>(Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage;Ljava/lang/String;Landroid/os/Looper;)V

    return-object v0
.end method

.method public getDataUrl()Ljava/lang/String;
    .locals 1

    .line 112
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage;->mDataUrl:Ljava/net/URL;

    if-eqz v0, :cond_0

    .line 113
    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 116
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getParamsforDl(Ljava/lang/String;)Ljava/util/Map;
    .locals 3
    .param p1, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 146
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 147
    .local v0, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage;->mConfig:Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->getFtHttpDLUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 148
    const-string/jumbo v1, "url"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage;->mImdnId:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 150
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage;->mImdnId:Ljava/lang/String;

    const-string v2, "id"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    :cond_0
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage;->mConversationId:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 153
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage;->mConversationId:Ljava/lang/String;

    const-string v2, "ci"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    :cond_1
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage;->mRemoteUri:Lcom/sec/ims/util/ImsUri;

    if-eqz v1, :cond_2

    .line 156
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage;->mRemoteUri:Lcom/sec/ims/util/ImsUri;

    invoke-virtual {v1}, Lcom/sec/ims/util/ImsUri;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "op"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    :cond_2
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage;->mMnoStrategy:Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    const-string v2, "is_eap_supported"

    invoke-interface {v1, v2}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->boolSetting(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 160
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage;->mConfig:Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->getPhoneId()I

    move-result v1

    invoke-static {v1}, Lcom/sec/internal/ims/config/util/AKAEapAuthHelper;->composeRootNai(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "EAP_ID"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    :cond_3
    return-object v0
.end method

.method public getTransferMech()I
    .locals 1

    .line 103
    const/4 v0, 0x1

    return v0
.end method

.method public isAutoResumable()Z
    .locals 2

    .line 108
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage;->getRcsStrategy()Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object v0

    const-string v1, "cancel_for_deregi_promptly"

    invoke-interface {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->boolSetting(Ljava/lang/String;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public receiveTransfer()V
    .locals 3

    .line 98
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage;->mStateMachine:Lcom/sec/internal/ims/servicemodules/im/FtMessage$FtStateMachine;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage;->mStateMachine:Lcom/sec/internal/ims/servicemodules/im/FtMessage$FtStateMachine;

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/servicemodules/im/FtMessage$FtStateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage$FtStateMachine;->sendMessage(Landroid/os/Message;)V

    .line 99
    return-void
.end method
