.class public Lcom/sec/internal/ims/settings/ImsServiceSwitch;
.super Ljava/lang/Object;
.source "ImsServiceSwitch.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/internal/ims/settings/ImsServiceSwitch$ImsSwitch;
    }
.end annotation


# static fields
.field protected static final IMS_FEATURE_RCS:Ljava/lang/String; = "rcs"

.field protected static final IMS_FEATURE_VOLTE:Ljava/lang/String; = "volte"

.field protected static final IMS_FEATURE_VT:Ljava/lang/String; = "videocall"

.field protected static final IMS_SETTINGS_UPDATED:Ljava/lang/String; = "android.intent.action.IMS_SETTINGS_UPDATED"

.field private static final LOG_TAG:Ljava/lang/String; = "ImsServiceSwitch"

.field protected static final SP_KEY_MNONAME:Ljava/lang/String; = "mnoname"

.field private static final mImsServiceSwitchTable:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final mImsVolteSwitchTable:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected isLoded:Z

.field protected mContext:Landroid/content/Context;

.field protected mDefaultSms:Z

.field protected mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

.field protected mPhoneId:I

.field protected mRcsEnabled:Z

.field protected mRcsServiceSwitch:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field protected mSsEnabled:Z

.field protected mVoLteEnabled:Z

.field protected mVolteServiceSwitch:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field protected sInstance:Lcom/sec/internal/ims/settings/ImsServiceSwitch;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 218
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/sec/internal/ims/settings/ImsServiceSwitch;->mImsVolteSwitchTable:Ljava/util/HashMap;

    .line 219
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/sec/internal/ims/settings/ImsServiceSwitch;->mImsServiceSwitchTable:Ljava/util/List;

    .line 222
    sget-object v0, Lcom/sec/internal/ims/settings/ImsServiceSwitch;->mImsVolteSwitchTable:Ljava/util/HashMap;

    const-string v1, "enableServiceVolte"

    const-string v2, "mmtel"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    sget-object v0, Lcom/sec/internal/ims/settings/ImsServiceSwitch;->mImsVolteSwitchTable:Ljava/util/HashMap;

    const-string v2, "enableServiceVilte"

    const-string v3, "mmtel-video"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    sget-object v0, Lcom/sec/internal/ims/settings/ImsServiceSwitch;->mImsVolteSwitchTable:Ljava/util/HashMap;

    const-string v3, "enableServiceSmsip"

    const-string/jumbo v4, "smsip"

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 228
    sget-object v0, Lcom/sec/internal/ims/settings/ImsServiceSwitch;->mImsServiceSwitchTable:Ljava/util/List;

    const-string v4, "enableIms"

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 229
    sget-object v0, Lcom/sec/internal/ims/settings/ImsServiceSwitch;->mImsServiceSwitchTable:Ljava/util/List;

    const-string v4, "enableServiceVowifi"

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 230
    sget-object v0, Lcom/sec/internal/ims/settings/ImsServiceSwitch;->mImsServiceSwitchTable:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 231
    sget-object v0, Lcom/sec/internal/ims/settings/ImsServiceSwitch;->mImsServiceSwitchTable:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 232
    sget-object v0, Lcom/sec/internal/ims/settings/ImsServiceSwitch;->mImsServiceSwitchTable:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 233
    sget-object v0, Lcom/sec/internal/ims/settings/ImsServiceSwitch;->mImsServiceSwitchTable:Ljava/util/List;

    const-string v1, "enableServiceRcs"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 234
    sget-object v0, Lcom/sec/internal/ims/settings/ImsServiceSwitch;->mImsServiceSwitchTable:Ljava/util/List;

    const-string v1, "enableServiceRcschat"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 236
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/settings/ImsServiceSwitch;->mVolteServiceSwitch:Ljava/util/Map;

    .line 46
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/settings/ImsServiceSwitch;->mRcsServiceSwitch:Ljava/util/Map;

    .line 48
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/internal/ims/settings/ImsServiceSwitch;->mRcsEnabled:Z

    .line 49
    iput-boolean v0, p0, Lcom/sec/internal/ims/settings/ImsServiceSwitch;->mVoLteEnabled:Z

    .line 50
    iput-boolean v0, p0, Lcom/sec/internal/ims/settings/ImsServiceSwitch;->mSsEnabled:Z

    .line 52
    iput v0, p0, Lcom/sec/internal/ims/settings/ImsServiceSwitch;->mPhoneId:I

    .line 53
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/internal/ims/settings/ImsServiceSwitch;->sInstance:Lcom/sec/internal/ims/settings/ImsServiceSwitch;

    .line 55
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/internal/ims/settings/ImsServiceSwitch;->mDefaultSms:Z

    .line 57
    iput-boolean v0, p0, Lcom/sec/internal/ims/settings/ImsServiceSwitch;->isLoded:Z

    .line 62
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "phoneId"    # I

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/settings/ImsServiceSwitch;->mVolteServiceSwitch:Ljava/util/Map;

    .line 46
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/settings/ImsServiceSwitch;->mRcsServiceSwitch:Ljava/util/Map;

    .line 48
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/internal/ims/settings/ImsServiceSwitch;->mRcsEnabled:Z

    .line 49
    iput-boolean v0, p0, Lcom/sec/internal/ims/settings/ImsServiceSwitch;->mVoLteEnabled:Z

    .line 50
    iput-boolean v0, p0, Lcom/sec/internal/ims/settings/ImsServiceSwitch;->mSsEnabled:Z

    .line 52
    iput v0, p0, Lcom/sec/internal/ims/settings/ImsServiceSwitch;->mPhoneId:I

    .line 53
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/internal/ims/settings/ImsServiceSwitch;->sInstance:Lcom/sec/internal/ims/settings/ImsServiceSwitch;

    .line 55
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/internal/ims/settings/ImsServiceSwitch;->mDefaultSms:Z

    .line 57
    iput-boolean v0, p0, Lcom/sec/internal/ims/settings/ImsServiceSwitch;->isLoded:Z

    .line 65
    iput-object p1, p0, Lcom/sec/internal/ims/settings/ImsServiceSwitch;->mContext:Landroid/content/Context;

    .line 66
    iput p2, p0, Lcom/sec/internal/ims/settings/ImsServiceSwitch;->mPhoneId:I

    .line 67
    invoke-static {p2}, Lcom/sec/internal/helper/SimUtil;->getMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/sec/internal/ims/settings/ImsServiceSwitch;->makeInstance(Lcom/sec/internal/constants/Mno;I)V

    .line 68
    return-void
.end method

.method public static getImsServiceSwitchTable()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 243
    sget-object v0, Lcom/sec/internal/ims/settings/ImsServiceSwitch;->mImsServiceSwitchTable:Ljava/util/List;

    return-object v0
.end method

.method public static getSimMobilityImsSwitchSetting()Landroid/content/ContentValues;
    .locals 6

    .line 247
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 248
    .local v0, "simMobilitySettings":Landroid/content/ContentValues;
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "enableIms"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 249
    invoke-static {}, Lcom/sec/internal/ims/settings/ImsServiceSwitch;->getVolteServiceSwitchTable()Ljava/util/HashMap;

    move-result-object v2

    .line 250
    .local v2, "switchMappingTable":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    .line 251
    .local v3, "mappingTableKey":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 252
    .local v5, "cscField":Ljava/lang/String;
    invoke-virtual {v0, v5, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 253
    .end local v5    # "cscField":Ljava/lang/String;
    goto :goto_0

    .line 254
    :cond_0
    const-string v4, "enableServiceVowifi"

    invoke-virtual {v0, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 255
    return-object v0
.end method

.method public static getVolteServiceSwitchTable()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 239
    sget-object v0, Lcom/sec/internal/ims/settings/ImsServiceSwitch;->mImsVolteSwitchTable:Ljava/util/HashMap;

    return-object v0
.end method

.method public static getXasImsSwitchSetting()Landroid/content/ContentValues;
    .locals 3

    .line 259
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 261
    .local v0, "xasSettings":Landroid/content/ContentValues;
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "enableIms"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 262
    const-string v2, "enableServiceVolte"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 263
    const-string v2, "enableServiceVowifi"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 264
    const-string v2, "enableServiceSmsip"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 265
    const-string v2, "enableServiceRcs"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 266
    const-string v2, "enableServiceRcschat"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 268
    return-object v0
.end method

.method static synthetic lambda$dumpServiceSwitch$0(Ljava/util/Map$Entry;)Ljava/lang/String;
    .locals 2
    .param p0, "e"    # Ljava/util/Map$Entry;

    .line 161
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private makeInstance(Lcom/sec/internal/constants/Mno;I)V
    .locals 2
    .param p1, "mno"    # Lcom/sec/internal/constants/Mno;
    .param p2, "phoneId"    # I

    .line 71
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "makeInstance: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImsServiceSwitch"

    invoke-static {v1, p2, v0}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    .line 72
    invoke-virtual {p1}, Lcom/sec/internal/constants/Mno;->isUSA()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 73
    new-instance v0, Lcom/sec/internal/ims/settings/ImsServiceSwitchUsa;

    iget-object v1, p0, Lcom/sec/internal/ims/settings/ImsServiceSwitch;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p2}, Lcom/sec/internal/ims/settings/ImsServiceSwitchUsa;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/sec/internal/ims/settings/ImsServiceSwitch;->sInstance:Lcom/sec/internal/ims/settings/ImsServiceSwitch;

    goto :goto_1

    .line 74
    :cond_0
    invoke-static {p1}, Lcom/sec/internal/ims/util/ConfigUtil;->isRcsEur(Lcom/sec/internal/constants/Mno;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p1}, Lcom/sec/internal/constants/Mno;->isOce()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 76
    :cond_1
    invoke-virtual {p1}, Lcom/sec/internal/constants/Mno;->isKor()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 77
    new-instance v0, Lcom/sec/internal/ims/settings/ImsServiceSwitchKor;

    iget-object v1, p0, Lcom/sec/internal/ims/settings/ImsServiceSwitch;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p2}, Lcom/sec/internal/ims/settings/ImsServiceSwitchKor;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/sec/internal/ims/settings/ImsServiceSwitch;->sInstance:Lcom/sec/internal/ims/settings/ImsServiceSwitch;

    goto :goto_1

    .line 79
    :cond_2
    new-instance v0, Lcom/sec/internal/ims/settings/ImsServiceSwitchBase;

    iget-object v1, p0, Lcom/sec/internal/ims/settings/ImsServiceSwitch;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p2}, Lcom/sec/internal/ims/settings/ImsServiceSwitchBase;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/sec/internal/ims/settings/ImsServiceSwitch;->sInstance:Lcom/sec/internal/ims/settings/ImsServiceSwitch;

    goto :goto_1

    .line 75
    :cond_3
    :goto_0
    new-instance v0, Lcom/sec/internal/ims/settings/ImsServiceSwitchEur;

    iget-object v1, p0, Lcom/sec/internal/ims/settings/ImsServiceSwitch;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p2}, Lcom/sec/internal/ims/settings/ImsServiceSwitchEur;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/sec/internal/ims/settings/ImsServiceSwitch;->sInstance:Lcom/sec/internal/ims/settings/ImsServiceSwitch;

    .line 81
    :goto_1
    return-void
.end method


# virtual methods
.method public doInit()V
    .locals 1

    .line 153
    iget-object v0, p0, Lcom/sec/internal/ims/settings/ImsServiceSwitch;->sInstance:Lcom/sec/internal/ims/settings/ImsServiceSwitch;

    invoke-virtual {v0}, Lcom/sec/internal/ims/settings/ImsServiceSwitch;->doInit()V

    .line 154
    return-void
.end method

.method public dump()V
    .locals 1

    .line 137
    iget-object v0, p0, Lcom/sec/internal/ims/settings/ImsServiceSwitch;->sInstance:Lcom/sec/internal/ims/settings/ImsServiceSwitch;

    invoke-virtual {v0}, Lcom/sec/internal/ims/settings/ImsServiceSwitch;->dump()V

    .line 138
    return-void
.end method

.method protected dumpServiceSwitch()V
    .locals 5

    .line 157
    iget-object v0, p0, Lcom/sec/internal/ims/settings/ImsServiceSwitch;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    iget v1, p0, Lcom/sec/internal/ims/settings/ImsServiceSwitch;->mPhoneId:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dumpServiceSwitch: volte ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/sec/internal/ims/settings/ImsServiceSwitch;->mVoLteEnabled:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, "] rcs ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/sec/internal/ims/settings/ImsServiceSwitch;->mRcsEnabled:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILjava/lang/String;)V

    .line 159
    iget-object v0, p0, Lcom/sec/internal/ims/settings/ImsServiceSwitch;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    iget v1, p0, Lcom/sec/internal/ims/settings/ImsServiceSwitch;->mPhoneId:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dumpServiceSwitch: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sec/internal/ims/settings/ImsServiceSwitch;->mVolteServiceSwitch:Ljava/util/Map;

    .line 160
    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/internal/ims/settings/ImsServiceSwitch;->mRcsServiceSwitch:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v4

    .line 159
    invoke-static {v3, v4}, Ljava/util/stream/Stream;->concat(Ljava/util/stream/Stream;Ljava/util/stream/Stream;)Ljava/util/stream/Stream;

    move-result-object v3

    sget-object v4, Lcom/sec/internal/ims/settings/-$$Lambda$ImsServiceSwitch$IBXxg7mTeSy6TId_FqbCiR5LOgU;->INSTANCE:Lcom/sec/internal/ims/settings/-$$Lambda$ImsServiceSwitch$IBXxg7mTeSy6TId_FqbCiR5LOgU;

    .line 161
    invoke-interface {v3, v4}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v3

    .line 162
    const-string v4, ", "

    invoke-static {v4}, Ljava/util/stream/Collectors;->joining(Ljava/lang/CharSequence;)Ljava/util/stream/Collector;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 159
    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILjava/lang/String;)V

    .line 163
    return-void
.end method

.method public enable(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "service"    # Ljava/lang/String;
    .param p2, "enable"    # Z

    .line 124
    iget-object v0, p0, Lcom/sec/internal/ims/settings/ImsServiceSwitch;->sInstance:Lcom/sec/internal/ims/settings/ImsServiceSwitch;

    invoke-virtual {v0, p1, p2}, Lcom/sec/internal/ims/settings/ImsServiceSwitch;->enable(Ljava/lang/String;Z)V

    .line 125
    return-void
.end method

.method public enableRcs(Z)V
    .locals 2
    .param p1, "enable"    # Z

    .line 132
    iget-object v0, p0, Lcom/sec/internal/ims/settings/ImsServiceSwitch;->sInstance:Lcom/sec/internal/ims/settings/ImsServiceSwitch;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/settings/ImsServiceSwitch;->enableRcs(Z)V

    .line 133
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/sec/internal/ims/settings/ImsServiceSwitch;->mPhoneId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",RCS SW:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const v1, 0x10030030

    invoke-static {v1, v0}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 134
    return-void
.end method

.method public enableVoLte(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .line 128
    iget-object v0, p0, Lcom/sec/internal/ims/settings/ImsServiceSwitch;->sInstance:Lcom/sec/internal/ims/settings/ImsServiceSwitch;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/settings/ImsServiceSwitch;->enableVoLte(Z)V

    .line 129
    return-void
.end method

.method public getRcsUserSetting()I
    .locals 1

    .line 116
    iget-object v0, p0, Lcom/sec/internal/ims/settings/ImsServiceSwitch;->sInstance:Lcom/sec/internal/ims/settings/ImsServiceSwitch;

    invoke-virtual {v0}, Lcom/sec/internal/ims/settings/ImsServiceSwitch;->getRcsUserSetting()I

    move-result v0

    return v0
.end method

.method protected getSwitchDump()Ljava/lang/String;
    .locals 7

    .line 166
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 168
    .local v0, "dump":Ljava/lang/StringBuilder;
    iget-boolean v1, p0, Lcom/sec/internal/ims/settings/ImsServiceSwitch;->mVoLteEnabled:Z

    const-string v2, "1"

    const-string v3, "0"

    if-eqz v1, :cond_0

    move-object v1, v2

    goto :goto_0

    :cond_0
    move-object v1, v3

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    invoke-static {}, Lcom/sec/ims/settings/ImsProfile;->getVoLteServiceList()[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v4, Lcom/sec/internal/ims/settings/-$$Lambda$ImsServiceSwitch$CFx-8xLawCfWNaW04YvfxwqFA0Q;

    invoke-direct {v4, p0}, Lcom/sec/internal/ims/settings/-$$Lambda$ImsServiceSwitch$CFx-8xLawCfWNaW04YvfxwqFA0Q;-><init>(Lcom/sec/internal/ims/settings/ImsServiceSwitch;)V

    .line 171
    invoke-interface {v1, v4}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v1

    .line 173
    const-string v4, ""

    const-string v5, "_"

    const-string v6, ","

    invoke-static {v4, v5, v6}, Ljava/util/stream/Collectors;->joining(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/util/stream/Collector;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 170
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    iget-boolean v1, p0, Lcom/sec/internal/ims/settings/ImsServiceSwitch;->mRcsEnabled:Z

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    move-object v2, v3

    :goto_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    invoke-static {}, Lcom/sec/ims/settings/ImsProfile;->getRcsServiceList()[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/sec/internal/ims/settings/-$$Lambda$ImsServiceSwitch$SKqEEzAJZDUb1uhhtwWmcZLZsdI;

    invoke-direct {v2, p0}, Lcom/sec/internal/ims/settings/-$$Lambda$ImsServiceSwitch$SKqEEzAJZDUb1uhhtwWmcZLZsdI;-><init>(Lcom/sec/internal/ims/settings/ImsServiceSwitch;)V

    .line 177
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v1

    .line 179
    invoke-static {v4, v5, v4}, Ljava/util/stream/Collectors;->joining(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/util/stream/Collector;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 176
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getVideoCallType(Ljava/lang/String;)I
    .locals 1
    .param p1, "simMno"    # Ljava/lang/String;

    .line 112
    iget-object v0, p0, Lcom/sec/internal/ims/settings/ImsServiceSwitch;->sInstance:Lcom/sec/internal/ims/settings/ImsServiceSwitch;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/settings/ImsServiceSwitch;->getVideoCallType(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getVoiceCallType(Ljava/lang/String;)I
    .locals 1
    .param p1, "simMno"    # Ljava/lang/String;

    .line 108
    iget-object v0, p0, Lcom/sec/internal/ims/settings/ImsServiceSwitch;->sInstance:Lcom/sec/internal/ims/settings/ImsServiceSwitch;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/settings/ImsServiceSwitch;->getVoiceCallType(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public isDefaultMessageAppInUse()Z
    .locals 1

    .line 120
    iget-object v0, p0, Lcom/sec/internal/ims/settings/ImsServiceSwitch;->sInstance:Lcom/sec/internal/ims/settings/ImsServiceSwitch;

    invoke-virtual {v0}, Lcom/sec/internal/ims/settings/ImsServiceSwitch;->isDefaultMessageAppInUse()Z

    move-result v0

    return v0
.end method

.method public isEnabled(Ljava/lang/String;)Z
    .locals 1
    .param p1, "service"    # Ljava/lang/String;

    .line 96
    iget-object v0, p0, Lcom/sec/internal/ims/settings/ImsServiceSwitch;->sInstance:Lcom/sec/internal/ims/settings/ImsServiceSwitch;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/settings/ImsServiceSwitch;->isEnabled(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isImsEnabled()Z
    .locals 1

    .line 100
    iget-object v0, p0, Lcom/sec/internal/ims/settings/ImsServiceSwitch;->sInstance:Lcom/sec/internal/ims/settings/ImsServiceSwitch;

    invoke-virtual {v0}, Lcom/sec/internal/ims/settings/ImsServiceSwitch;->isImsEnabled()Z

    move-result v0

    return v0
.end method

.method public isImsSwitchEnabled(Ljava/lang/String;)Z
    .locals 4
    .param p1, "switchval"    # Ljava/lang/String;

    .line 276
    iget v0, p0, Lcom/sec/internal/ims/settings/ImsServiceSwitch;->mPhoneId:I

    iget-object v1, p0, Lcom/sec/internal/ims/settings/ImsServiceSwitch;->mContext:Landroid/content/Context;

    const-string v2, "imsswitch"

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3, v3}, Lcom/sec/internal/helper/ImsSharedPrefHelper;->getSharedPref(ILandroid/content/Context;Ljava/lang/String;IZ)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 278
    .local v0, "spSwitch":Landroid/content/SharedPreferences;
    invoke-interface {v0, p1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public isRcsEnabled()Z
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/sec/internal/ims/settings/ImsServiceSwitch;->sInstance:Lcom/sec/internal/ims/settings/ImsServiceSwitch;

    invoke-virtual {v0}, Lcom/sec/internal/ims/settings/ImsServiceSwitch;->isRcsEnabled()Z

    move-result v0

    return v0
.end method

.method public isVoLteEnabled()Z
    .locals 1

    .line 104
    iget-object v0, p0, Lcom/sec/internal/ims/settings/ImsServiceSwitch;->sInstance:Lcom/sec/internal/ims/settings/ImsServiceSwitch;

    invoke-virtual {v0}, Lcom/sec/internal/ims/settings/ImsServiceSwitch;->isVoLteEnabled()Z

    move-result v0

    return v0
.end method

.method public synthetic lambda$getSwitchDump$1$ImsServiceSwitch(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "svc"    # Ljava/lang/String;

    .line 172
    iget-object v0, p0, Lcom/sec/internal/ims/settings/ImsServiceSwitch;->mVolteServiceSwitch:Ljava/util/Map;

    .line 171
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    .line 172
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "1"

    goto :goto_0

    :cond_0
    const-string v0, "0"

    :goto_0
    return-object v0
.end method

.method public synthetic lambda$getSwitchDump$2$ImsServiceSwitch(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "svc"    # Ljava/lang/String;

    .line 178
    iget-object v0, p0, Lcom/sec/internal/ims/settings/ImsServiceSwitch;->mRcsServiceSwitch:Ljava/util/Map;

    .line 177
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    .line 178
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "1"

    goto :goto_0

    :cond_0
    const-string v0, "0"

    :goto_0
    return-object v0
.end method

.method protected saveImsSwitch(Landroid/content/ContentValues;)V
    .locals 6
    .param p1, "cv"    # Landroid/content/ContentValues;

    .line 184
    iget v0, p0, Lcom/sec/internal/ims/settings/ImsServiceSwitch;->mPhoneId:I

    iget-object v1, p0, Lcom/sec/internal/ims/settings/ImsServiceSwitch;->mContext:Landroid/content/Context;

    const-string v2, "imsswitch"

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3, v3}, Lcom/sec/internal/helper/ImsSharedPrefHelper;->getSharedPref(ILandroid/content/Context;Ljava/lang/String;IZ)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 186
    .local v0, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 188
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-static {}, Lcom/sec/internal/ims/settings/ImsServiceSwitch;->getImsServiceSwitchTable()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 189
    .local v4, "value":Ljava/lang/String;
    invoke-static {p1, v4, v3}, Lcom/sec/internal/helper/CollectionUtils;->getBooleanValue(Landroid/content/ContentValues;Ljava/lang/String;Z)Z

    move-result v5

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 190
    .end local v4    # "value":Ljava/lang/String;
    goto :goto_0

    .line 192
    :cond_0
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 193
    return-void
.end method

.method public setRcsUserSetting(I)V
    .locals 1
    .param p1, "rcsUserSetting"    # I

    .line 149
    iget-object v0, p0, Lcom/sec/internal/ims/settings/ImsServiceSwitch;->sInstance:Lcom/sec/internal/ims/settings/ImsServiceSwitch;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/settings/ImsServiceSwitch;->setRcsUserSetting(I)V

    .line 150
    return-void
.end method

.method public setVideoCallType(Ljava/lang/String;I)V
    .locals 1
    .param p1, "simMno"    # Ljava/lang/String;
    .param p2, "videoCallType"    # I

    .line 145
    iget-object v0, p0, Lcom/sec/internal/ims/settings/ImsServiceSwitch;->sInstance:Lcom/sec/internal/ims/settings/ImsServiceSwitch;

    invoke-virtual {v0, p1, p2}, Lcom/sec/internal/ims/settings/ImsServiceSwitch;->setVideoCallType(Ljava/lang/String;I)V

    .line 146
    return-void
.end method

.method public setVoiceCallType(Ljava/lang/String;I)V
    .locals 1
    .param p1, "simMno"    # Ljava/lang/String;
    .param p2, "voiceCallType"    # I

    .line 141
    iget-object v0, p0, Lcom/sec/internal/ims/settings/ImsServiceSwitch;->sInstance:Lcom/sec/internal/ims/settings/ImsServiceSwitch;

    invoke-virtual {v0, p1, p2}, Lcom/sec/internal/ims/settings/ImsServiceSwitch;->setVoiceCallType(Ljava/lang/String;I)V

    .line 142
    return-void
.end method

.method public unregisterObserver()V
    .locals 1

    .line 272
    iget-object v0, p0, Lcom/sec/internal/ims/settings/ImsServiceSwitch;->sInstance:Lcom/sec/internal/ims/settings/ImsServiceSwitch;

    invoke-virtual {v0}, Lcom/sec/internal/ims/settings/ImsServiceSwitch;->unregisterObserver()V

    .line 273
    return-void
.end method

.method public updateServiceSwitch(Landroid/content/ContentValues;)V
    .locals 2
    .param p1, "mnoinfo"    # Landroid/content/ContentValues;

    .line 84
    const-string v0, "mnoname"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/internal/constants/Mno;->fromName(Ljava/lang/String;)Lcom/sec/internal/constants/Mno;

    move-result-object v0

    iget v1, p0, Lcom/sec/internal/ims/settings/ImsServiceSwitch;->mPhoneId:I

    invoke-direct {p0, v0, v1}, Lcom/sec/internal/ims/settings/ImsServiceSwitch;->makeInstance(Lcom/sec/internal/constants/Mno;I)V

    .line 85
    iget-object v0, p0, Lcom/sec/internal/ims/settings/ImsServiceSwitch;->sInstance:Lcom/sec/internal/ims/settings/ImsServiceSwitch;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/settings/ImsServiceSwitch;->updateServiceSwitch(Landroid/content/ContentValues;)V

    .line 87
    iget-object v0, p0, Lcom/sec/internal/ims/settings/ImsServiceSwitch;->sInstance:Lcom/sec/internal/ims/settings/ImsServiceSwitch;

    invoke-virtual {v0}, Lcom/sec/internal/ims/settings/ImsServiceSwitch;->dumpServiceSwitch()V

    .line 88
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/sec/internal/ims/settings/ImsServiceSwitch;->mPhoneId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",UPDATE:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/settings/ImsServiceSwitch;->sInstance:Lcom/sec/internal/ims/settings/ImsServiceSwitch;

    invoke-virtual {v1}, Lcom/sec/internal/ims/settings/ImsServiceSwitch;->getSwitchDump()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const v1, 0x1003002f

    invoke-static {v1, v0}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 89
    return-void
.end method
