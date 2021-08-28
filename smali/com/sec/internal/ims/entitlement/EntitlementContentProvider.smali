.class public Lcom/sec/internal/ims/entitlement/EntitlementContentProvider;
.super Landroid/content/ContentProvider;
.source "EntitlementContentProvider.java"


# static fields
.field private static final AKA_TOKEN:Ljava/lang/String; = "aka_token"

.field private static final LOG_TAG:Ljava/lang/String;

.field private static final PROVIDER_NAME:Ljava/lang/String; = "com.samsung.ims.entitlement.provider"

.field private static final RETRIEVE_AKA_TOKEN:I = 0x1

.field private static final RETRIEVE_VOWIFI_ENTITLEMENT_STATUS:I = 0x2

.field private static final SLOT_ID:Ljava/lang/String; = "slot"

.field private static final VOWIFI_ENTITLEMENT_STATUS:Ljava/lang/String; = "vowifi_entitlement_status"

.field private static final sUriMatcher:Landroid/content/UriMatcher;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 32
    const-class v0, Lcom/sec/internal/ims/entitlement/EntitlementContentProvider;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/entitlement/EntitlementContentProvider;->LOG_TAG:Ljava/lang/String;

    .line 38
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/sec/internal/ims/entitlement/EntitlementContentProvider;->sUriMatcher:Landroid/content/UriMatcher;

    .line 48
    const-string v1, "com.samsung.ims.entitlement.provider"

    const-string v2, "aka_token"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 49
    sget-object v0, Lcom/sec/internal/ims/entitlement/EntitlementContentProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string/jumbo v2, "vowifi_entitlement_status"

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 50
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 31
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 34
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/internal/ims/entitlement/EntitlementContentProvider;->mContext:Landroid/content/Context;

    return-void
.end method

.method private activateSimDevice(I)V
    .locals 6
    .param p1, "slotId"    # I

    .line 95
    sget-object v0, Lcom/sec/internal/ims/entitlement/EntitlementContentProvider;->LOG_TAG:Ljava/lang/String;

    const-string v1, "activateSimDevice()"

    invoke-static {v0, p1, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 96
    invoke-static {p1}, Lcom/sec/internal/ims/entitlement/util/NSDSConfigHelper;->getConfigServer(I)Ljava/lang/String;

    move-result-object v0

    .line 98
    .local v0, "entitlementServer":Ljava/lang/String;
    const-string v1, "Nsds"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 99
    const-string v1, "Nsdsconfig"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 100
    :cond_0
    invoke-static {p1}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v1

    .line 101
    .local v1, "mno":Lcom/sec/internal/constants/Mno;
    sget-object v2, Lcom/sec/internal/constants/Mno;->TMOUS:Lcom/sec/internal/constants/Mno;

    if-ne v1, v2, :cond_1

    .line 102
    sget-object v2, Lcom/sec/internal/ims/entitlement/EntitlementContentProvider;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v3, "retrieve aka token for config"

    invoke-static {v2, p1, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 103
    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/sec/internal/ims/entitlement/EntitlementContentProvider;->mContext:Landroid/content/Context;

    const-class v4, Lcom/sec/internal/ims/entitlement/config/EntitlementConfigService;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 104
    .local v2, "intent":Landroid/content/Intent;
    const-string v3, "com.sec.vsim.ericssonnsds.REFRESH_DEVICE_CONFIG"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 105
    const/16 v3, 0x13

    const-string v4, "device_event_type"

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 107
    const-string v3, "com.sec.vsim.ericssonnsds.SIM_SLOT_IDX"

    invoke-virtual {v2, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 108
    iget-object v3, p0, Lcom/sec/internal/ims/entitlement/EntitlementContentProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 109
    .end local v2    # "intent":Landroid/content/Intent;
    goto :goto_0

    .line 110
    :cond_1
    sget-object v2, Lcom/sec/internal/ims/entitlement/EntitlementContentProvider;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v3, "retrieve aka token for nsds"

    invoke-static {v2, p1, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 111
    sget-object v2, Lcom/sec/internal/constants/ims/entitilement/NSDSContractExt;->AUTHORITY_URI:Landroid/net/Uri;

    const-string/jumbo v3, "retrieve_aka_token"

    invoke-static {v2, v3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 112
    .local v2, "trans_uri":Landroid/net/Uri;
    iget-object v3, p0, Lcom/sec/internal/ims/entitlement/EntitlementContentProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    const/4 v5, 0x0

    invoke-virtual {v3, v2, v4, v5, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 115
    .end local v1    # "mno":Lcom/sec/internal/constants/Mno;
    .end local v2    # "trans_uri":Landroid/net/Uri;
    :cond_2
    :goto_0
    return-void
.end method

.method private getAkaToken(I)Landroid/database/Cursor;
    .locals 5
    .param p1, "slotId"    # I

    .line 118
    const/4 v0, 0x0

    .line 119
    .local v0, "aka_token":Ljava/lang/String;
    invoke-static {p1}, Lcom/sec/internal/ims/entitlement/util/NSDSConfigHelper;->getConfigServer(I)Ljava/lang/String;

    move-result-object v1

    .line 120
    .local v1, "entitlementServer":Ljava/lang/String;
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/entitlement/EntitlementContentProvider;->supportEntitlementSlot(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 121
    const-string v0, "NotSupported"

    goto :goto_3

    .line 123
    :cond_0
    const-string v2, "Nsds"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 124
    const-string v2, "Nsdsconfig"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    .line 132
    :cond_1
    const-string/jumbo v2, "ts43"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 133
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getAECModule()Lcom/sec/internal/interfaces/ims/aec/IAECModule;

    move-result-object v2

    .line 134
    .local v2, "aecModule":Lcom/sec/internal/interfaces/ims/aec/IAECModule;
    if-eqz v2, :cond_2

    invoke-interface {v2, p1}, Lcom/sec/internal/interfaces/ims/aec/IAECModule;->isEntitlementRequired(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 135
    invoke-interface {v2, p1}, Lcom/sec/internal/interfaces/ims/aec/IAECModule;->getAkaToken(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 137
    :cond_2
    const-string v0, "NotSupported"

    .line 139
    .end local v2    # "aecModule":Lcom/sec/internal/interfaces/ims/aec/IAECModule;
    :goto_0
    goto :goto_3

    .line 140
    :cond_3
    const-string v0, "NotSupported"

    goto :goto_3

    .line 125
    :cond_4
    :goto_1
    invoke-static {p1}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->getSimManagerFromSimSlot(I)Lcom/sec/internal/interfaces/ims/core/ISimManager;

    move-result-object v2

    .line 126
    .local v2, "sm":Lcom/sec/internal/interfaces/ims/core/ISimManager;
    if-nez v2, :cond_5

    const-string v3, ""

    goto :goto_2

    :cond_5
    invoke-interface {v2}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getImsi()Ljava/lang/String;

    move-result-object v3

    .line 127
    .local v3, "imsi":Ljava/lang/String;
    :goto_2
    iget-object v4, p0, Lcom/sec/internal/ims/entitlement/EntitlementContentProvider;->mContext:Landroid/content/Context;

    invoke-static {v4, v3}, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSSharedPrefHelper;->getAkaToken(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 128
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 129
    const-string v0, "InProgress"

    .line 130
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/entitlement/EntitlementContentProvider;->activateSimDevice(I)V

    .line 132
    .end local v2    # "sm":Lcom/sec/internal/interfaces/ims/core/ISimManager;
    .end local v3    # "imsi":Ljava/lang/String;
    :cond_6
    nop

    .line 144
    :goto_3
    sget-object v2, Lcom/sec/internal/ims/entitlement/EntitlementContentProvider;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getAkaToken(): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, p1, v3}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;ILjava/lang/String;)V

    .line 145
    new-instance v2, Landroid/database/MatrixCursor;

    const-string v3, "aka_token"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 146
    .local v2, "cursor":Landroid/database/MatrixCursor;
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-virtual {v2, v3}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 147
    return-object v2
.end method

.method private getVoWiFiEntitlementStatus(I)Landroid/database/Cursor;
    .locals 6
    .param p1, "slotId"    # I

    .line 161
    invoke-static {p1}, Lcom/sec/internal/ims/entitlement/util/NSDSConfigHelper;->getConfigServer(I)Ljava/lang/String;

    move-result-object v0

    .line 162
    .local v0, "entitlementServer":Ljava/lang/String;
    new-instance v1, Landroid/database/MatrixCursor;

    const-string/jumbo v2, "vowifi_entitlement_status"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 164
    .local v1, "cursor":Landroid/database/MatrixCursor;
    const/4 v2, 0x0

    .line 165
    .local v2, "entitlementStatus":Z
    const-string/jumbo v3, "ts43"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 166
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getAECModule()Lcom/sec/internal/interfaces/ims/aec/IAECModule;

    move-result-object v3

    .line 167
    .local v3, "aecModule":Lcom/sec/internal/interfaces/ims/aec/IAECModule;
    if-eqz v3, :cond_2

    .line 168
    invoke-interface {v3, p1}, Lcom/sec/internal/interfaces/ims/aec/IAECModule;->isEntitlementDisabled(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 169
    const/4 v2, 0x1

    goto :goto_0

    .line 171
    :cond_0
    invoke-interface {v3, p1}, Lcom/sec/internal/interfaces/ims/aec/IAECModule;->getVoWiFiEntitlementStatus(I)Z

    move-result v2

    goto :goto_0

    .line 174
    .end local v3    # "aecModule":Lcom/sec/internal/interfaces/ims/aec/IAECModule;
    :cond_1
    const-string v3, "Nsds"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 175
    iget-object v3, p0, Lcom/sec/internal/ims/entitlement/EntitlementContentProvider;->mContext:Landroid/content/Context;

    invoke-static {v3, p1}, Lcom/sec/internal/ims/entitlement/storagehelper/DeviceIdHelper;->getDeviceId(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v3

    .line 176
    .local v3, "deviceId":Ljava/lang/String;
    iget-object v4, p0, Lcom/sec/internal/ims/entitlement/EntitlementContentProvider;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "service_vowifi"

    invoke-static {v4, v5, v3}, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSSharedPrefHelper;->getEntitlementCompleted(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    goto :goto_1

    .line 174
    .end local v3    # "deviceId":Ljava/lang/String;
    :cond_2
    :goto_0
    nop

    .line 180
    :goto_1
    sget-object v3, Lcom/sec/internal/ims/entitlement/EntitlementContentProvider;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getVoWiFiEntitlementStatus: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, p1, v4}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 181
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v3}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 182
    return-object v1
.end method

.method private supportEntitlementSlot(I)Z
    .locals 4
    .param p1, "slotId"    # I

    .line 151
    invoke-static {p1}, Lcom/sec/internal/ims/entitlement/util/NSDSConfigHelper;->getConfigServer(I)Ljava/lang/String;

    move-result-object v0

    .line 152
    .local v0, "entitlementServer":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 153
    sget-object v1, Lcom/sec/internal/ims/entitlement/EntitlementContentProvider;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "supportEntitlementSlot: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, p1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 154
    const/4 v1, 0x1

    return v1

    .line 156
    :cond_0
    sget-object v1, Lcom/sec/internal/ims/entitlement/EntitlementContentProvider;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "supportEntitlementSlot : Not Support"

    invoke-static {v1, p1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 157
    const/4 v1, 0x0

    return v1
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "selection"    # Ljava/lang/String;
    .param p3, "selectionArgs"    # [Ljava/lang/String;

    .line 91
    const/4 v0, 0x0

    return v0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;

    .line 81
    const/4 v0, 0x0

    return-object v0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;

    .line 86
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()Z
    .locals 1

    .line 54
    invoke-virtual {p0}, Lcom/sec/internal/ims/entitlement/EntitlementContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/entitlement/EntitlementContentProvider;->mContext:Landroid/content/Context;

    .line 55
    const/4 v0, 0x1

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 4
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .param p5, "sortOrder"    # Ljava/lang/String;

    .line 59
    const-string/jumbo v0, "slot"

    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 60
    .local v0, "slotId":I
    sget-object v1, Lcom/sec/internal/ims/entitlement/EntitlementContentProvider;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "query uri:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;ILjava/lang/String;)V

    .line 62
    const/4 v1, 0x0

    .line 63
    .local v1, "cursor":Landroid/database/Cursor;
    sget-object v2, Lcom/sec/internal/ims/entitlement/EntitlementContentProvider;->sUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v2, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_1

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    goto :goto_0

    .line 68
    :cond_0
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/entitlement/EntitlementContentProvider;->getVoWiFiEntitlementStatus(I)Landroid/database/Cursor;

    move-result-object v1

    goto :goto_0

    .line 65
    :cond_1
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/entitlement/EntitlementContentProvider;->getAkaToken(I)Landroid/database/Cursor;

    move-result-object v1

    .line 66
    nop

    .line 71
    :goto_0
    return-object v1
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;

    .line 76
    const/4 v0, 0x0

    return v0
.end method
