.class public Lcom/sec/internal/ims/core/handler/secims/ResipCmcHandler;
.super Lcom/sec/internal/ims/core/handler/CmcHandler;
.source "ResipCmcHandler.java"


# static fields
.field private static final EVENT_CMC_RECORD_EVENT:I = 0x12f

.field private static final EVENT_CONNECT_TO_SVE:I = 0x12c

.field private static final EVENT_DISCONNECT_TO_SVE:I = 0x12e

.field private static final EVENT_SVE_CONNECTED:I = 0x12d

.field private static final NOTIFY_RECORD_START_FAILURE:I = 0x33

.field private static final NOTIFY_RECORD_START_FAILURE_NO_MEMORY:I = 0x34

.field private static final NOTIFY_RECORD_START_SUCCESS:I = 0x32

.field private static final NOTIFY_RECORD_STOP_FAILURE:I = 0x3d

.field private static final NOTIFY_RECORD_STOP_NO_MEMORY:I = 0x3e

.field private static final NOTIFY_RECORD_STOP_SUCCESS:I = 0x3c

.field public static final NOTIFY_RELAY_MEDIA_PAUSE:I = 0x4

.field public static final NOTIFY_RELAY_MEDIA_RESUME:I = 0x3

.field public static final NOTIFY_RELAY_MEDIA_START:I = 0x1

.field public static final NOTIFY_RELAY_MEDIA_STOP:I = 0x2


# instance fields
.field private mCmcMediaEventlistener:Lcom/sec/sve/ICmcMediaEventListener;

.field private mCmcRecordingCh:I

.field private mCmcRegiPhoneId:I

.field private mContext:Landroid/content/Context;

.field private mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

.field private mStackIf:Lcom/sec/internal/ims/core/handler/secims/StackIF;

.field private mSveConnected:Z

.field private mSveConnecting:Z

.field private mSveManager:Lcom/sec/sve/SecVideoEngineManager;


# direct methods
.method public constructor <init>(Landroid/os/Looper;Landroid/content/Context;Lcom/sec/internal/interfaces/ims/IImsFramework;)V
    .locals 2
    .param p1, "looper"    # Landroid/os/Looper;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "imsFramework"    # Lcom/sec/internal/interfaces/ims/IImsFramework;

    .line 123
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/CmcHandler;-><init>(Landroid/os/Looper;)V

    .line 46
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipCmcHandler;->mSveConnected:Z

    .line 47
    iput-boolean v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipCmcHandler;->mSveConnecting:Z

    .line 48
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipCmcHandler;->mCmcRegiPhoneId:I

    .line 49
    iput v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipCmcHandler;->mCmcRecordingCh:I

    .line 51
    new-instance v0, Lcom/sec/internal/ims/core/handler/secims/ResipCmcHandler$1;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/core/handler/secims/ResipCmcHandler$1;-><init>(Lcom/sec/internal/ims/core/handler/secims/ResipCmcHandler;)V

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipCmcHandler;->mCmcMediaEventlistener:Lcom/sec/sve/ICmcMediaEventListener;

    .line 124
    iput-object p2, p0, Lcom/sec/internal/ims/core/handler/secims/ResipCmcHandler;->mContext:Landroid/content/Context;

    .line 125
    iput-object p3, p0, Lcom/sec/internal/ims/core/handler/secims/ResipCmcHandler;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    .line 126
    new-instance v0, Lcom/sec/sve/SecVideoEngineManager;

    new-instance v1, Lcom/sec/internal/ims/core/handler/secims/ResipCmcHandler$2;

    invoke-direct {v1, p0}, Lcom/sec/internal/ims/core/handler/secims/ResipCmcHandler$2;-><init>(Lcom/sec/internal/ims/core/handler/secims/ResipCmcHandler;)V

    invoke-direct {v0, p2, v1}, Lcom/sec/sve/SecVideoEngineManager;-><init>(Landroid/content/Context;Lcom/sec/sve/SecVideoEngineManager$ConnectionListener;)V

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipCmcHandler;->mSveManager:Lcom/sec/sve/SecVideoEngineManager;

    .line 146
    return-void
.end method

.method static synthetic access$000(Lcom/sec/internal/ims/core/handler/secims/ResipCmcHandler;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/ims/core/handler/secims/ResipCmcHandler;

    .line 24
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipCmcHandler;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/internal/ims/core/handler/secims/ResipCmcHandler;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/ims/core/handler/secims/ResipCmcHandler;

    .line 24
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipCmcHandler;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/sec/internal/ims/core/handler/secims/ResipCmcHandler;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/ims/core/handler/secims/ResipCmcHandler;

    .line 24
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipCmcHandler;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/sec/internal/ims/core/handler/secims/ResipCmcHandler;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/ims/core/handler/secims/ResipCmcHandler;

    .line 24
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipCmcHandler;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/sec/internal/ims/core/handler/secims/ResipCmcHandler;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sec/internal/ims/core/handler/secims/ResipCmcHandler;
    .param p1, "x1"    # Z

    .line 24
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipCmcHandler;->mSveConnected:Z

    return p1
.end method

.method static synthetic access$1302(Lcom/sec/internal/ims/core/handler/secims/ResipCmcHandler;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sec/internal/ims/core/handler/secims/ResipCmcHandler;
    .param p1, "x1"    # Z

    .line 24
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipCmcHandler;->mSveConnecting:Z

    return p1
.end method

.method static synthetic access$1400(Lcom/sec/internal/ims/core/handler/secims/ResipCmcHandler;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/ims/core/handler/secims/ResipCmcHandler;

    .line 24
    invoke-direct {p0}, Lcom/sec/internal/ims/core/handler/secims/ResipCmcHandler;->needToReconnect()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1500(Lcom/sec/internal/ims/core/handler/secims/ResipCmcHandler;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/ims/core/handler/secims/ResipCmcHandler;

    .line 24
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipCmcHandler;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/internal/ims/core/handler/secims/ResipCmcHandler;)Lcom/sec/internal/ims/core/handler/secims/StackIF;
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/ims/core/handler/secims/ResipCmcHandler;

    .line 24
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipCmcHandler;->mStackIf:Lcom/sec/internal/ims/core/handler/secims/StackIF;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/internal/ims/core/handler/secims/ResipCmcHandler;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/ims/core/handler/secims/ResipCmcHandler;

    .line 24
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipCmcHandler;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/internal/ims/core/handler/secims/ResipCmcHandler;)Lcom/sec/internal/helper/RegistrantList;
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/ims/core/handler/secims/ResipCmcHandler;

    .line 24
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipCmcHandler;->mCmcMediaEventRegistrants:Lcom/sec/internal/helper/RegistrantList;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sec/internal/ims/core/handler/secims/ResipCmcHandler;)Lcom/sec/internal/helper/RegistrantList;
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/ims/core/handler/secims/ResipCmcHandler;

    .line 24
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipCmcHandler;->mCmcMediaEventRegistrants:Lcom/sec/internal/helper/RegistrantList;

    return-object v0
.end method

.method static synthetic access$600(Lcom/sec/internal/ims/core/handler/secims/ResipCmcHandler;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/ims/core/handler/secims/ResipCmcHandler;

    .line 24
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipCmcHandler;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lcom/sec/internal/ims/core/handler/secims/ResipCmcHandler;)Lcom/sec/internal/helper/RegistrantList;
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/ims/core/handler/secims/ResipCmcHandler;

    .line 24
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipCmcHandler;->mCmcMediaEventRegistrants:Lcom/sec/internal/helper/RegistrantList;

    return-object v0
.end method

.method static synthetic access$800(Lcom/sec/internal/ims/core/handler/secims/ResipCmcHandler;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/ims/core/handler/secims/ResipCmcHandler;

    .line 24
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipCmcHandler;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$900(Lcom/sec/internal/ims/core/handler/secims/ResipCmcHandler;)Lcom/sec/internal/helper/RegistrantList;
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/ims/core/handler/secims/ResipCmcHandler;

    .line 24
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipCmcHandler;->mCmcMediaEventRegistrants:Lcom/sec/internal/helper/RegistrantList;

    return-object v0
.end method

.method private connectToSve()V
    .locals 3

    .line 212
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipCmcHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SVE is not connected ? "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/sec/internal/ims/core/handler/secims/ResipCmcHandler;->mSveConnected:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    iget-boolean v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipCmcHandler;->mSveConnected:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipCmcHandler;->mSveConnecting:Z

    if-nez v0, :cond_0

    .line 214
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipCmcHandler;->LOG_TAG:Ljava/lang/String;

    const-string v1, "connectToSve"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipCmcHandler;->mSveManager:Lcom/sec/sve/SecVideoEngineManager;

    invoke-virtual {v0}, Lcom/sec/sve/SecVideoEngineManager;->connectService()V

    .line 216
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipCmcHandler;->mSveConnecting:Z

    .line 218
    :cond_0
    return-void
.end method

.method private disconnectToSve()V
    .locals 3

    .line 221
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipCmcHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SVE is connected ? "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/sec/internal/ims/core/handler/secims/ResipCmcHandler;->mSveConnected:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    iget-boolean v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipCmcHandler;->mSveConnected:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipCmcHandler;->mSveConnecting:Z

    if-eqz v0, :cond_1

    .line 223
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipCmcHandler;->LOG_TAG:Ljava/lang/String;

    const-string v1, "disconnectToSve"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipCmcHandler;->mSveManager:Lcom/sec/sve/SecVideoEngineManager;

    invoke-virtual {v0}, Lcom/sec/sve/SecVideoEngineManager;->disconnectService()V

    .line 225
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipCmcHandler;->mSveConnecting:Z

    .line 226
    iput-boolean v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipCmcHandler;->mSveConnected:Z

    .line 228
    :cond_1
    return-void
.end method

.method private getUaByCmcType(II)Lcom/sec/internal/ims/core/handler/secims/UserAgent;
    .locals 7
    .param p1, "phoneId"    # I
    .param p2, "cmcType"    # I

    .line 299
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipCmcHandler;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getRegistrationManager()Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    move-result-object v0

    .line 302
    .local v0, "rm":Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;
    const-string v1, "mmtel"

    invoke-interface {v0, p1, v1}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getUserAgentByPhoneId(ILjava/lang/String;)[Lcom/sec/internal/interfaces/ims/core/IUserAgent;

    move-result-object v1

    .line 303
    .local v1, "uaList":[Lcom/sec/internal/interfaces/ims/core/IUserAgent;
    array-length v2, v1

    const/4 v3, 0x0

    if-nez v2, :cond_0

    .line 304
    return-object v3

    .line 307
    :cond_0
    array-length v2, v1

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_3

    aget-object v5, v1, v4

    .line 308
    .local v5, "ua":Lcom/sec/internal/interfaces/ims/core/IUserAgent;
    if-nez v5, :cond_1

    .line 309
    goto :goto_1

    .line 312
    :cond_1
    invoke-interface {v5}, Lcom/sec/internal/interfaces/ims/core/IUserAgent;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/ims/settings/ImsProfile;->getCmcType()I

    move-result v6

    if-ne v6, p2, :cond_2

    .line 313
    move-object v2, v5

    check-cast v2, Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    return-object v2

    .line 307
    .end local v5    # "ua":Lcom/sec/internal/interfaces/ims/core/IUserAgent;
    :cond_2
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 316
    :cond_3
    return-object v3
.end method

.method private needToReconnect()Z
    .locals 4

    .line 173
    const/4 v0, 0x0

    .line 174
    .local v0, "ua":Lcom/sec/internal/ims/core/handler/secims/UserAgent;
    const/4 v1, 0x5

    .line 175
    .local v1, "cmcType":I
    iget-object v2, p0, Lcom/sec/internal/ims/core/handler/secims/ResipCmcHandler;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    invoke-interface {v2}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getP2pCC()Lcom/sec/internal/google/cmc/ICmcConnectivityController;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/internal/google/cmc/ICmcConnectivityController;->isEnabledWifiDirectFeature()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 176
    const/4 v1, 0x7

    .line 178
    :cond_0
    const/4 v2, 0x1

    .local v2, "type":I
    :goto_0
    if-gt v2, v1, :cond_2

    .line 179
    iget v3, p0, Lcom/sec/internal/ims/core/handler/secims/ResipCmcHandler;->mCmcRegiPhoneId:I

    invoke-direct {p0, v3, v2}, Lcom/sec/internal/ims/core/handler/secims/ResipCmcHandler;->getUaByCmcType(II)Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    move-result-object v0

    .line 180
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->getImsRegistration()Lcom/sec/ims/ImsRegistration;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 181
    const/4 v3, 0x1

    return v3

    .line 178
    :cond_1
    add-int/lit8 v2, v2, 0x2

    goto :goto_0

    .line 184
    .end local v2    # "type":I
    :cond_2
    const/4 v2, 0x0

    return v2
.end method

.method private onCmcRecordEvent(Lcom/sec/internal/helper/AsyncResult;)V
    .locals 7
    .param p1, "result"    # Lcom/sec/internal/helper/AsyncResult;

    .line 240
    iget-object v0, p1, Lcom/sec/internal/helper/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/NotifyCmcRecordEventData;

    .line 241
    .local v0, "recordEvent":Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/NotifyCmcRecordEventData;
    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/NotifyCmcRecordEventData;->phoneId()J

    move-result-wide v1

    long-to-int v1, v1

    .line 242
    .local v1, "phoneId":I
    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/NotifyCmcRecordEventData;->session()J

    move-result-wide v2

    long-to-int v2, v2

    .line 243
    .local v2, "sessionId":I
    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/NotifyCmcRecordEventData;->event()J

    move-result-wide v3

    long-to-int v3, v3

    .line 245
    .local v3, "event":I
    iget-object v4, p0, Lcom/sec/internal/ims/core/handler/secims/ResipCmcHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onCmcRecordEvent() session: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", event: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    new-instance v4, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;

    invoke-direct {v4}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;-><init>()V

    .line 248
    .local v4, "me":Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;
    invoke-virtual {v4, v1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->setPhoneId(I)V

    .line 249
    invoke-virtual {v4, v2}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->setSessionID(I)V

    .line 251
    const/16 v5, 0x32

    if-eq v3, v5, :cond_1

    const/16 v5, 0x3c

    if-ne v3, v5, :cond_0

    goto :goto_0

    .line 254
    :cond_0
    invoke-virtual {v4, v3}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->setCmcRecordingEvent(I)V

    goto :goto_1

    .line 252
    :cond_1
    :goto_0
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->setCmcRecordingEvent(I)V

    .line 257
    :goto_1
    iget-object v5, p0, Lcom/sec/internal/ims/core/handler/secims/ResipCmcHandler;->mCmcMediaEventRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {v5, v4}, Lcom/sec/internal/helper/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    .line 258
    return-void
.end method

.method private onSveConnected()V
    .locals 2

    .line 231
    iget-boolean v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipCmcHandler;->mSveConnected:Z

    if-eqz v0, :cond_0

    .line 232
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/handler/secims/ResipCmcHandler;->registerCmcMediaEventListener()V

    .line 233
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipCmcHandler;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "onSveConnected"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 235
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipCmcHandler;->LOG_TAG:Ljava/lang/String;

    const-string v1, "SVE was not connected!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    :goto_0
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .line 189
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 203
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/sec/internal/helper/AsyncResult;

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/core/handler/secims/ResipCmcHandler;->onCmcRecordEvent(Lcom/sec/internal/helper/AsyncResult;)V

    .line 204
    goto :goto_0

    .line 199
    :pswitch_1
    invoke-direct {p0}, Lcom/sec/internal/ims/core/handler/secims/ResipCmcHandler;->disconnectToSve()V

    .line 200
    goto :goto_0

    .line 195
    :pswitch_2
    invoke-direct {p0}, Lcom/sec/internal/ims/core/handler/secims/ResipCmcHandler;->onSveConnected()V

    .line 196
    goto :goto_0

    .line 191
    :pswitch_3
    invoke-direct {p0}, Lcom/sec/internal/ims/core/handler/secims/ResipCmcHandler;->connectToSve()V

    .line 192
    nop

    .line 209
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x12c
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public init()V
    .locals 3

    .line 150
    invoke-super {p0}, Lcom/sec/internal/ims/core/handler/CmcHandler;->init()V

    .line 152
    invoke-static {}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->getInstance()Lcom/sec/internal/ims/core/handler/secims/StackIF;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipCmcHandler;->mStackIf:Lcom/sec/internal/ims/core/handler/secims/StackIF;

    .line 153
    const/16 v1, 0x12f

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v1, v2}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->registerCmcRecordEvent(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 155
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipCmcHandler;->mSveConnected:Z

    .line 156
    iput-boolean v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipCmcHandler;->mSveConnecting:Z

    .line 157
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipCmcHandler;->mCmcRegiPhoneId:I

    .line 158
    return-void
.end method

.method public registerCmcMediaEventListener()V
    .locals 2

    .line 262
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipCmcHandler;->mSveManager:Lcom/sec/sve/SecVideoEngineManager;

    iget-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipCmcHandler;->mCmcMediaEventlistener:Lcom/sec/sve/ICmcMediaEventListener;

    invoke-virtual {v0, v1}, Lcom/sec/sve/SecVideoEngineManager;->registerForCmcEventListener(Lcom/sec/sve/ICmcMediaEventListener;)V

    .line 263
    return-void
.end method

.method public sendConnectToSve(I)V
    .locals 1
    .param p1, "phoneId"    # I

    .line 161
    iput p1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipCmcHandler;->mCmcRegiPhoneId:I

    .line 162
    const/16 v0, 0x12c

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/handler/secims/ResipCmcHandler;->sendEmptyMessage(I)Z

    .line 163
    return-void
.end method

.method public sendDisonnectToSve()V
    .locals 1

    .line 166
    invoke-direct {p0}, Lcom/sec/internal/ims/core/handler/secims/ResipCmcHandler;->needToReconnect()Z

    move-result v0

    if-nez v0, :cond_0

    .line 167
    const/16 v0, 0x12e

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/handler/secims/ResipCmcHandler;->sendEmptyMessage(I)Z

    .line 169
    :cond_0
    return-void
.end method

.method public sendMediaEvent(IIII)V
    .locals 4
    .param p1, "phoneId"    # I
    .param p2, "sessionId"    # I
    .param p3, "event"    # I
    .param p4, "handle"    # I

    .line 321
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipCmcHandler;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getRegistrationManager()Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    move-result-object v0

    .line 322
    .local v0, "rm":Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;
    invoke-interface {v0, p4}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getUserAgent(I)Lcom/sec/internal/interfaces/ims/core/IUserAgent;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    .line 324
    .local v1, "ua":Lcom/sec/internal/ims/core/handler/secims/UserAgent;
    if-nez v1, :cond_0

    .line 325
    iget-object v2, p0, Lcom/sec/internal/ims/core/handler/secims/ResipCmcHandler;->LOG_TAG:Ljava/lang/String;

    const-string v3, "User Agent was empty!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    return-void

    .line 329
    :cond_0
    const/4 v2, 0x3

    invoke-virtual {v1, p2, p3, v2}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->sendMediaEvent(III)V

    .line 330
    return-void
.end method

.method public sendRtpStatsToStack(Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$AudioRtpStats;)V
    .locals 1
    .param p1, "rtpStats"    # Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$AudioRtpStats;

    .line 334
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipCmcHandler;->mStackIf:Lcom/sec/internal/ims/core/handler/secims/StackIF;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->sendRtpStatsToStack(Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$AudioRtpStats;)V

    .line 335
    return-void
.end method

.method public sreCreateRelayChannel(II)I
    .locals 1
    .param p1, "lhs_stream"    # I
    .param p2, "rhs_stream"    # I

    .line 389
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipCmcHandler;->mSveManager:Lcom/sec/sve/SecVideoEngineManager;

    invoke-virtual {v0, p1, p2}, Lcom/sec/sve/SecVideoEngineManager;->sreCreateRelayChannel(II)I

    move-result v0

    return v0
.end method

.method public sreCreateStream(IIILjava/lang/String;ILjava/lang/String;IZZIILjava/lang/String;ZZ)I
    .locals 16
    .param p1, "phoneId"    # I
    .param p2, "sessionId"    # I
    .param p3, "mno"    # I
    .param p4, "localIp"    # Ljava/lang/String;
    .param p5, "localPort"    # I
    .param p6, "remoteIp"    # Ljava/lang/String;
    .param p7, "remotePort"    # I
    .param p8, "isIpv6"    # Z
    .param p9, "isMdmn"    # Z
    .param p10, "localRTCPPort"    # I
    .param p11, "remoteRTCPPort"    # I
    .param p12, "pdn"    # Ljava/lang/String;
    .param p13, "xqEnabled"    # Z
    .param p14, "ttyChannel"    # Z

    .line 366
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/internal/ims/core/handler/secims/ResipCmcHandler;->mSveManager:Lcom/sec/sve/SecVideoEngineManager;

    move/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    move/from16 v11, p10

    move/from16 v12, p11

    move-object/from16 v13, p12

    move/from16 v14, p13

    move/from16 v15, p14

    invoke-virtual/range {v1 .. v15}, Lcom/sec/sve/SecVideoEngineManager;->sreCreateStream(IIILjava/lang/String;ILjava/lang/String;IZZIILjava/lang/String;ZZ)I

    move-result v1

    return v1
.end method

.method public sreDeleteRelayChannel(I)I
    .locals 1
    .param p1, "channel"    # I

    .line 394
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipCmcHandler;->mSveManager:Lcom/sec/sve/SecVideoEngineManager;

    invoke-virtual {v0, p1}, Lcom/sec/sve/SecVideoEngineManager;->sreDeleteRelayChannel(I)I

    move-result v0

    return v0
.end method

.method public sreDeleteStream(I)I
    .locals 1
    .param p1, "sessionId"    # I

    .line 378
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipCmcHandler;->mSveManager:Lcom/sec/sve/SecVideoEngineManager;

    invoke-virtual {v0, p1}, Lcom/sec/sve/SecVideoEngineManager;->sreDeleteStream(I)I

    move-result v0

    return v0
.end method

.method public sreEnableSRTP(III[BI)I
    .locals 6
    .param p1, "sessionId"    # I
    .param p2, "direction"    # I
    .param p3, "profile"    # I
    .param p4, "key"    # [B
    .param p5, "keylen"    # I

    .line 452
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipCmcHandler;->mSveManager:Lcom/sec/sve/SecVideoEngineManager;

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/sec/sve/SecVideoEngineManager;->sreEnableSRTP(III[BI)I

    move-result v0

    return v0
.end method

.method public sreGetMdmn(I)Z
    .locals 1
    .param p1, "sessionId"    # I

    .line 354
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipCmcHandler;->mSveManager:Lcom/sec/sve/SecVideoEngineManager;

    invoke-virtual {v0, p1}, Lcom/sec/sve/SecVideoEngineManager;->sreGetMdmn(I)Z

    move-result v0

    return v0
.end method

.method public sreGetVersion()Ljava/lang/String;
    .locals 1

    .line 344
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipCmcHandler;->mSveManager:Lcom/sec/sve/SecVideoEngineManager;

    invoke-virtual {v0}, Lcom/sec/sve/SecVideoEngineManager;->sreGetVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public sreHoldRelayChannel(I)I
    .locals 1
    .param p1, "channel"    # I

    .line 430
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipCmcHandler;->mSveManager:Lcom/sec/sve/SecVideoEngineManager;

    invoke-virtual {v0, p1}, Lcom/sec/sve/SecVideoEngineManager;->sreHoldRelayChannel(I)I

    move-result v0

    return v0
.end method

.method public sreHoldRelaySession(I)I
    .locals 2
    .param p1, "sessionId"    # I

    .line 410
    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;

    invoke-direct {v0}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;-><init>()V

    .line 411
    .local v0, "me":Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;
    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->setRelayStreamEvent(I)V

    .line 412
    invoke-virtual {v0, p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->setSessionID(I)V

    .line 414
    iget-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipCmcHandler;->mCmcMediaEventRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {v1, v0}, Lcom/sec/internal/helper/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    .line 415
    const/4 v1, 0x0

    return v1
.end method

.method public sreInitialize()V
    .locals 1

    .line 339
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipCmcHandler;->mSveManager:Lcom/sec/sve/SecVideoEngineManager;

    invoke-virtual {v0}, Lcom/sec/sve/SecVideoEngineManager;->sreInitialize()V

    .line 340
    return-void
.end method

.method public sreResumeRelayChannel(I)I
    .locals 1
    .param p1, "channel"    # I

    .line 435
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipCmcHandler;->mSveManager:Lcom/sec/sve/SecVideoEngineManager;

    invoke-virtual {v0, p1}, Lcom/sec/sve/SecVideoEngineManager;->sreResumeRelayChannel(I)I

    move-result v0

    return v0
.end method

.method public sreResumeRelaySession(I)I
    .locals 2
    .param p1, "sessionId"    # I

    .line 420
    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;

    invoke-direct {v0}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;-><init>()V

    .line 421
    .local v0, "me":Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;
    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->setRelayStreamEvent(I)V

    .line 422
    invoke-virtual {v0, p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->setSessionID(I)V

    .line 424
    iget-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipCmcHandler;->mCmcMediaEventRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {v1, v0}, Lcom/sec/internal/helper/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    .line 425
    const/4 v1, 0x0

    return v1
.end method

.method public sreSetCodecInfo(ILjava/lang/String;IIIIIIZIIIIICCCCCCIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I
    .locals 34
    .param p1, "sessionId"    # I
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "type"    # I
    .param p4, "rx_type"    # I
    .param p5, "freq"    # I
    .param p6, "bitrate"    # I
    .param p7, "ptime"    # I
    .param p8, "maxptime"    # I
    .param p9, "octectAligned"    # Z
    .param p10, "mode_set"    # I
    .param p11, "nchannel"    # I
    .param p12, "dtxEnable"    # I
    .param p13, "red_level"    # I
    .param p14, "red_pt"    # I
    .param p15, "dtx"    # C
    .param p16, "dtxRecv"    # C
    .param p17, "hfOnly"    # C
    .param p18, "evsModeSwitch"    # C
    .param p19, "chSend"    # C
    .param p20, "chRecv"    # C
    .param p21, "chAwareRecv"    # I
    .param p22, "cmr"    # I
    .param p23, "brSendMin"    # Ljava/lang/String;
    .param p24, "brSendMax"    # Ljava/lang/String;
    .param p25, "brRecvMin"    # Ljava/lang/String;
    .param p26, "brRecvMax"    # Ljava/lang/String;
    .param p27, "sendBwRange"    # Ljava/lang/String;
    .param p28, "recvBwRange"    # Ljava/lang/String;
    .param p29, "defaultBr"    # Ljava/lang/String;
    .param p30, "defaultBw"    # Ljava/lang/String;
    .param p31, "protocol"    # I

    move/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    move/from16 v11, p11

    move/from16 v12, p12

    move/from16 v13, p13

    move/from16 v14, p14

    move/from16 v15, p15

    move/from16 v16, p16

    move/from16 v17, p17

    move/from16 v18, p18

    move/from16 v19, p19

    move/from16 v20, p20

    move-object/from16 v23, p23

    move-object/from16 v24, p24

    move-object/from16 v25, p25

    move-object/from16 v26, p26

    move-object/from16 v27, p27

    move-object/from16 v28, p28

    move-object/from16 v29, p29

    move-object/from16 v30, p30

    move/from16 v31, p31

    .line 483
    move-object/from16 v0, p0

    move/from16 v32, v1

    iget-object v1, v0, Lcom/sec/internal/ims/core/handler/secims/ResipCmcHandler;->mSveManager:Lcom/sec/sve/SecVideoEngineManager;

    move-object v0, v1

    move/from16 v1, p21

    move-object/from16 v33, v0

    int-to-short v0, v1

    move/from16 v21, v0

    move/from16 v0, p22

    int-to-short v1, v0

    move/from16 v22, v1

    move/from16 v1, v32

    move-object/from16 v0, v33

    invoke-virtual/range {v0 .. v31}, Lcom/sec/sve/SecVideoEngineManager;->sreSetCodecInfo(ILjava/lang/String;IIIIIIZIIIIICCCCCCIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public sreSetConnection(ILjava/lang/String;ILjava/lang/String;IIII)I
    .locals 10
    .param p1, "sessionId"    # I
    .param p2, "localIp"    # Ljava/lang/String;
    .param p3, "localPort"    # I
    .param p4, "remoteIp"    # Ljava/lang/String;
    .param p5, "remotePort"    # I
    .param p6, "localRTCPPort"    # I
    .param p7, "remoteRTCPPort"    # I
    .param p8, "crbtType"    # I

    .line 446
    move-object v0, p0

    iget-object v1, v0, Lcom/sec/internal/ims/core/handler/secims/ResipCmcHandler;->mSveManager:Lcom/sec/sve/SecVideoEngineManager;

    move v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    move v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    invoke-virtual/range {v1 .. v9}, Lcom/sec/sve/SecVideoEngineManager;->sreSetConnection(ILjava/lang/String;ILjava/lang/String;IIII)I

    move-result v1

    return v1
.end method

.method public sreSetDtmfCodecInfo(IIIIII)I
    .locals 7
    .param p1, "phoneId"    # I
    .param p2, "sessionId"    # I
    .param p3, "type"    # I
    .param p4, "rxtype"    # I
    .param p5, "bitrate"    # I
    .param p6, "inband"    # I

    .line 493
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipCmcHandler;->mSveManager:Lcom/sec/sve/SecVideoEngineManager;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/sec/sve/SecVideoEngineManager;->sreSetDtmfCodecInfo(IIIIII)I

    move-result v0

    return v0
.end method

.method public sreSetMdmn(IZ)I
    .locals 1
    .param p1, "sessionId"    # I
    .param p2, "isMdmn"    # Z

    .line 349
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipCmcHandler;->mSveManager:Lcom/sec/sve/SecVideoEngineManager;

    invoke-virtual {v0, p1, p2}, Lcom/sec/sve/SecVideoEngineManager;->sreSetMdmn(IZ)I

    move-result v0

    return v0
.end method

.method public sreSetNetId(IJ)I
    .locals 1
    .param p1, "sessionId"    # I
    .param p2, "netId"    # J

    .line 359
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipCmcHandler;->mSveManager:Lcom/sec/sve/SecVideoEngineManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sec/sve/SecVideoEngineManager;->sreSetNetId(IJ)I

    move-result v0

    return v0
.end method

.method public sreSetRtcpOnCall(IIIII)I
    .locals 6
    .param p1, "sessionId"    # I
    .param p2, "rr"    # I
    .param p3, "rs"    # I
    .param p4, "rtpTimer"    # I
    .param p5, "rtcpTimer"    # I

    .line 457
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipCmcHandler;->mSveManager:Lcom/sec/sve/SecVideoEngineManager;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/sec/sve/SecVideoEngineManager;->sreSetRtcpOnCall(IIIII)I

    move-result v0

    return v0
.end method

.method public sreSetRtcpTimeout(II)I
    .locals 1
    .param p1, "sessionId"    # I
    .param p2, "sec"    # I

    .line 467
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipCmcHandler;->mSveManager:Lcom/sec/sve/SecVideoEngineManager;

    invoke-virtual {v0, p1, p2}, Lcom/sec/sve/SecVideoEngineManager;->sreSetRtcpTimeout(II)I

    move-result v0

    return v0
.end method

.method public sreSetRtcpXr(IIIII[I)I
    .locals 7
    .param p1, "sessionId"    # I
    .param p2, "flag"    # I
    .param p3, "blocks"    # I
    .param p4, "statflags"    # I
    .param p5, "rttmode"    # I
    .param p6, "maxsizesInt"    # [I

    .line 472
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipCmcHandler;->mSveManager:Lcom/sec/sve/SecVideoEngineManager;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/sec/sve/SecVideoEngineManager;->sreSetRtcpXr(IIIII[I)I

    move-result v0

    return v0
.end method

.method public sreSetRtpTimeout(II)I
    .locals 1
    .param p1, "sessionId"    # I
    .param p2, "sec"    # I

    .line 462
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipCmcHandler;->mSveManager:Lcom/sec/sve/SecVideoEngineManager;

    invoke-virtual {v0, p1, p2}, Lcom/sec/sve/SecVideoEngineManager;->sreSetRtpTimeout(II)I

    move-result v0

    return v0
.end method

.method public sreStartRecording(I)I
    .locals 2
    .param p1, "sessionId"    # I

    .line 498
    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;

    invoke-direct {v0}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;-><init>()V

    .line 499
    .local v0, "me":Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;
    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->setRelayStreamEvent(I)V

    .line 500
    invoke-virtual {v0, p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->setSessionID(I)V

    .line 502
    iget-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipCmcHandler;->mCmcMediaEventRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {v1, v0}, Lcom/sec/internal/helper/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    .line 503
    const/4 v1, 0x0

    return v1
.end method

.method public sreStartRecordingChannel(III)I
    .locals 1
    .param p1, "sessionId"    # I
    .param p2, "streamId"    # I
    .param p3, "channel"    # I

    .line 507
    iput p3, p0, Lcom/sec/internal/ims/core/handler/secims/ResipCmcHandler;->mCmcRecordingCh:I

    .line 508
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipCmcHandler;->mSveManager:Lcom/sec/sve/SecVideoEngineManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sec/sve/SecVideoEngineManager;->sreStartRecording(III)I

    move-result v0

    return v0
.end method

.method public sreStartRelayChannel(II)I
    .locals 1
    .param p1, "channel"    # I
    .param p2, "direction"    # I

    .line 400
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipCmcHandler;->mSveManager:Lcom/sec/sve/SecVideoEngineManager;

    invoke-virtual {v0, p1, p2}, Lcom/sec/sve/SecVideoEngineManager;->sreStartRelayChannel(II)I

    move-result v0

    return v0
.end method

.method public sreStartStream(III)I
    .locals 1
    .param p1, "sessionId"    # I
    .param p2, "oldDirection"    # I
    .param p3, "newDirection"    # I

    .line 373
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipCmcHandler;->mSveManager:Lcom/sec/sve/SecVideoEngineManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sec/sve/SecVideoEngineManager;->sreStartStream(III)I

    move-result v0

    return v0
.end method

.method public sreStopRecording(I)I
    .locals 2
    .param p1, "sessionId"    # I

    .line 513
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipCmcHandler;->mSveManager:Lcom/sec/sve/SecVideoEngineManager;

    iget v1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipCmcHandler;->mCmcRecordingCh:I

    invoke-virtual {v0, p1, v1}, Lcom/sec/sve/SecVideoEngineManager;->sreStopRecording(II)I

    move-result v0

    return v0
.end method

.method public sreStopRelayChannel(I)I
    .locals 1
    .param p1, "channel"    # I

    .line 405
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipCmcHandler;->mSveManager:Lcom/sec/sve/SecVideoEngineManager;

    invoke-virtual {v0, p1}, Lcom/sec/sve/SecVideoEngineManager;->sreStopRelayChannel(I)I

    move-result v0

    return v0
.end method

.method public sreUpdateRelayChannel(II)I
    .locals 1
    .param p1, "channel"    # I
    .param p2, "stream"    # I

    .line 440
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipCmcHandler;->mSveManager:Lcom/sec/sve/SecVideoEngineManager;

    invoke-virtual {v0, p1, p2}, Lcom/sec/sve/SecVideoEngineManager;->sreUpdateRelayChannel(II)I

    move-result v0

    return v0
.end method

.method public sreUpdateStream(I)I
    .locals 1
    .param p1, "sessionId"    # I

    .line 383
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipCmcHandler;->mSveManager:Lcom/sec/sve/SecVideoEngineManager;

    invoke-virtual {v0, p1}, Lcom/sec/sve/SecVideoEngineManager;->sreUpdateStream(I)I

    move-result v0

    return v0
.end method

.method public startCmcRecord(IIIIJILjava/lang/String;IIIIIJLjava/lang/String;)Z
    .locals 20
    .param p1, "phoneId"    # I
    .param p2, "sessionId"    # I
    .param p3, "audioSource"    # I
    .param p4, "outputFormat"    # I
    .param p5, "maxFileSize"    # J
    .param p7, "maxDuration"    # I
    .param p8, "outputPath"    # Ljava/lang/String;
    .param p9, "audioEncodingBR"    # I
    .param p10, "audioChannels"    # I
    .param p11, "audioSamplingR"    # I
    .param p12, "audioEncoder"    # I
    .param p13, "durationInterval"    # I
    .param p14, "fileSizeInterval"    # J
    .param p16, "author"    # Ljava/lang/String;

    .line 273
    move-object/from16 v0, p0

    const/4 v1, 0x1

    move/from16 v2, p1

    invoke-direct {v0, v2, v1}, Lcom/sec/internal/ims/core/handler/secims/ResipCmcHandler;->getUaByCmcType(II)Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    move-result-object v19

    .line 274
    .local v19, "ua":Lcom/sec/internal/ims/core/handler/secims/UserAgent;
    if-nez v19, :cond_0

    .line 275
    iget-object v1, v0, Lcom/sec/internal/ims/core/handler/secims/ResipCmcHandler;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v3, "startCmcRecord: can\'t find UserAgent for cmc."

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    const/4 v1, 0x0

    return v1

    .line 279
    :cond_0
    move-object/from16 v3, v19

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move-wide/from16 v7, p5

    move/from16 v9, p7

    move-object/from16 v10, p8

    move/from16 v11, p9

    move/from16 v12, p10

    move/from16 v13, p11

    move/from16 v14, p12

    move/from16 v15, p13

    move-wide/from16 v16, p14

    move-object/from16 v18, p16

    invoke-virtual/range {v3 .. v18}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->startCmcRecord(IIIJILjava/lang/String;IIIIIJLjava/lang/String;)V

    .line 283
    return v1
.end method

.method public stopCmcRecord(II)Z
    .locals 3
    .param p1, "phoneId"    # I
    .param p2, "sessionId"    # I

    .line 288
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/sec/internal/ims/core/handler/secims/ResipCmcHandler;->getUaByCmcType(II)Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    move-result-object v1

    .line 289
    .local v1, "ua":Lcom/sec/internal/ims/core/handler/secims/UserAgent;
    if-nez v1, :cond_0

    .line 290
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipCmcHandler;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "stopCmcRecord: can\'t find UserAgent for cmc."

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    const/4 v0, 0x0

    return v0

    .line 293
    :cond_0
    invoke-virtual {v1, p2}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->stopRecord(I)V

    .line 295
    return v0
.end method

.method public unregisterCmcMediaEventListener()V
    .locals 2

    .line 266
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipCmcHandler;->mSveManager:Lcom/sec/sve/SecVideoEngineManager;

    iget-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipCmcHandler;->mCmcMediaEventlistener:Lcom/sec/sve/ICmcMediaEventListener;

    invoke-virtual {v0, v1}, Lcom/sec/sve/SecVideoEngineManager;->unregisterForCmcEventListener(Lcom/sec/sve/ICmcMediaEventListener;)V

    .line 267
    return-void
.end method
