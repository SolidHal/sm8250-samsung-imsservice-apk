.class public Lcom/sec/internal/ims/aec/persist/AECStorage;
.super Ljava/lang/Object;
.source "AECStorage.java"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mPhoneId:I

.field private final mProviderSettings:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mSharedPreference:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/lang/String;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "phoneId"    # I
    .param p3, "mno"    # Ljava/lang/String;

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/sec/internal/ims/aec/persist/AECStorage;->mContext:Landroid/content/Context;

    .line 25
    iput p2, p0, Lcom/sec/internal/ims/aec/persist/AECStorage;->mPhoneId:I

    .line 26
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "aec_result_%s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/aec/persist/AECStorage;->mSharedPreference:Ljava/lang/String;

    .line 27
    iget-object v0, p0, Lcom/sec/internal/ims/aec/persist/AECStorage;->mContext:Landroid/content/Context;

    invoke-static {v0, p2, p3}, Lcom/sec/internal/ims/aec/persist/ProviderSettings;->getSettingMap(Landroid/content/Context;ILjava/lang/String;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/aec/persist/AECStorage;->mProviderSettings:Ljava/util/Map;

    .line 28
    return-void
.end method

.method private declared-synchronized getIntValue(Ljava/lang/String;)I
    .locals 3
    .param p1, "key"    # Ljava/lang/String;

    monitor-enter p0

    .line 35
    :try_start_0
    invoke-direct {p0}, Lcom/sec/internal/ims/aec/persist/AECStorage;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    .local v0, "sp":Landroid/content/SharedPreferences;
    :try_start_1
    const-string v1, "0"

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return v1

    .line 38
    .end local p0    # "this":Lcom/sec/internal/ims/aec/persist/AECStorage;
    :catch_0
    move-exception v1

    .line 39
    .local v1, "nfe":Ljava/lang/NumberFormatException;
    const/4 v2, 0x0

    monitor-exit p0

    return v2

    .line 34
    .end local v0    # "sp":Landroid/content/SharedPreferences;
    .end local v1    # "nfe":Ljava/lang/NumberFormatException;
    .end local p1    # "key":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private getMessageForIncompatible()Ljava/lang/String;
    .locals 1

    .line 225
    const-string/jumbo v0, "root/application/vowifi/messageforincompatible"

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/aec/persist/AECStorage;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getServiceFlowURL()Ljava/lang/String;
    .locals 1

    .line 217
    const-string/jumbo v0, "root/application/vowifi/serviceflow_url"

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/aec/persist/AECStorage;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getServiceFlowUserData()Ljava/lang/String;
    .locals 1

    .line 221
    const-string/jumbo v0, "root/application/vowifi/serviceflow_userdata"

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/aec/persist/AECStorage;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getSharedPreferences()Landroid/content/SharedPreferences;
    .locals 3

    .line 31
    iget-object v0, p0, Lcom/sec/internal/ims/aec/persist/AECStorage;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sec/internal/ims/aec/persist/AECStorage;->mSharedPreference:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method private declared-synchronized getStringValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    monitor-enter p0

    .line 44
    :try_start_0
    invoke-direct {p0}, Lcom/sec/internal/ims/aec/persist/AECStorage;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 45
    .local v0, "sp":Landroid/content/SharedPreferences;
    const-string v1, ""

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v1

    .line 43
    .end local v0    # "sp":Landroid/content/SharedPreferences;
    .end local p0    # "this":Lcom/sec/internal/ims/aec/persist/AECStorage;
    .end local p1    # "key":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private getVoLTEAutoOn()Z
    .locals 2

    .line 311
    iget-object v0, p0, Lcom/sec/internal/ims/aec/persist/AECStorage;->mProviderSettings:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 312
    const/4 v0, 0x0

    return v0

    .line 314
    :cond_0
    const-string/jumbo v1, "volte_auto_on"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string/jumbo v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private getVoWiFiActivationMode(IIII)I
    .locals 4
    .param p1, "entitle"    # I
    .param p2, "prov"    # I
    .param p3, "tc"    # I
    .param p4, "addr"    # I

    .line 198
    invoke-virtual {p0}, Lcom/sec/internal/ims/aec/persist/AECStorage;->getVersion()I

    move-result v0

    const/4 v1, 0x0

    if-ltz v0, :cond_9

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    goto :goto_1

    .line 201
    :cond_0
    const/4 v2, 0x3

    const/4 v3, 0x1

    if-nez p1, :cond_4

    .line 202
    if-eqz p2, :cond_3

    if-eqz p3, :cond_3

    if-nez p4, :cond_1

    goto :goto_0

    .line 204
    :cond_1
    if-eq p2, v2, :cond_2

    if-eq p3, v2, :cond_2

    if-ne p4, v2, :cond_4

    .line 205
    :cond_2
    return v3

    .line 203
    :cond_3
    :goto_0
    return v0

    .line 208
    :cond_4
    if-ne p1, v3, :cond_8

    .line 209
    if-eq p2, v3, :cond_5

    if-ne p2, v0, :cond_8

    :cond_5
    if-eq p3, v3, :cond_6

    if-ne p3, v0, :cond_8

    :cond_6
    if-eq p4, v3, :cond_7

    if-ne p4, v0, :cond_8

    .line 210
    :cond_7
    return v2

    .line 213
    :cond_8
    return v1

    .line 199
    :cond_9
    :goto_1
    return v1
.end method

.method private getVoWiFiAddrStatus()I
    .locals 1

    .line 194
    const-string/jumbo v0, "root/application/vowifi/addrstatus"

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/aec/persist/AECStorage;->getIntValue(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private getVoWiFiAutoOn()Z
    .locals 2

    .line 318
    iget-object v0, p0, Lcom/sec/internal/ims/aec/persist/AECStorage;->mProviderSettings:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 319
    const/4 v0, 0x0

    return v0

    .line 321
    :cond_0
    const-string/jumbo v1, "vowifi_auto_on"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string/jumbo v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private getVoWiFiEntitlementStatus()I
    .locals 1

    .line 182
    const-string/jumbo v0, "root/application/vowifi/entitlementstatus"

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/aec/persist/AECStorage;->getIntValue(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private getVoWiFiProvStatus()I
    .locals 1

    .line 186
    const-string/jumbo v0, "root/application/vowifi/provstatus"

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/aec/persist/AECStorage;->getIntValue(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private getVoWiFiTcStatus()I
    .locals 1

    .line 190
    const-string/jumbo v0, "root/application/vowifi/tc_status"

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/aec/persist/AECStorage;->getIntValue(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private declared-synchronized setMap(Ljava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    monitor-enter p0

    .line 56
    :try_start_0
    invoke-direct {p0}, Lcom/sec/internal/ims/aec/persist/AECStorage;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 57
    .local v0, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 58
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 59
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 60
    nop

    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    goto :goto_0

    .line 61
    .end local p0    # "this":Lcom/sec/internal/ims/aec/persist/AECStorage;
    :cond_0
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 62
    monitor-exit p0

    return-void

    .line 55
    .end local v0    # "sp":Landroid/content/SharedPreferences;
    .end local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local p1    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized setStringValue(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    monitor-enter p0

    .line 49
    :try_start_0
    invoke-direct {p0}, Lcom/sec/internal/ims/aec/persist/AECStorage;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 50
    .local v0, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 51
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 52
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    monitor-exit p0

    return-void

    .line 48
    .end local v0    # "sp":Landroid/content/SharedPreferences;
    .end local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local p0    # "this":Lcom/sec/internal/ims/aec/persist/AECStorage;
    .end local p1    # "key":Ljava/lang/String;
    .end local p2    # "value":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public getAkaToken()Ljava/lang/String;
    .locals 1

    .line 133
    const-string/jumbo v0, "root/token/token"

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/aec/persist/AECStorage;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAppId()Ljava/lang/String;
    .locals 3

    .line 239
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 240
    .local v0, "appId":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Lcom/sec/internal/ims/aec/persist/AECStorage;->getEntitlementForVoLte()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 241
    const-string v1, "ap2003"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 243
    :cond_0
    invoke-virtual {p0}, Lcom/sec/internal/ims/aec/persist/AECStorage;->getEntitlementForVoWiFi()Z

    move-result v1

    const-string v2, ","

    if-eqz v1, :cond_2

    .line 244
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 245
    :cond_1
    const-string v1, "ap2004"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 247
    :cond_2
    invoke-virtual {p0}, Lcom/sec/internal/ims/aec/persist/AECStorage;->getEntitlementForSMSoIp()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 248
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 249
    :cond_3
    const-string v1, "ap2005"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 251
    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getEntitlementForSMSoIp()Z
    .locals 2

    .line 304
    iget-object v0, p0, Lcom/sec/internal/ims/aec/persist/AECStorage;->mProviderSettings:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 305
    const/4 v0, 0x0

    return v0

    .line 307
    :cond_0
    const-string v1, "entitlement_for_smsoip"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string/jumbo v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public getEntitlementForVoLte()Z
    .locals 2

    .line 290
    iget-object v0, p0, Lcom/sec/internal/ims/aec/persist/AECStorage;->mProviderSettings:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 291
    const/4 v0, 0x0

    return v0

    .line 293
    :cond_0
    const-string v1, "entitlement_for_volte"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string/jumbo v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public getEntitlementForVoWiFi()Z
    .locals 2

    .line 297
    iget-object v0, p0, Lcom/sec/internal/ims/aec/persist/AECStorage;->mProviderSettings:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 298
    const/4 v0, 0x0

    return v0

    .line 300
    :cond_0
    const-string v1, "entitlement_for_vowifi"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string/jumbo v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public getEntitlementInitFromApp()Z
    .locals 2

    .line 283
    iget-object v0, p0, Lcom/sec/internal/ims/aec/persist/AECStorage;->mProviderSettings:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 284
    const/4 v0, 0x0

    return v0

    .line 286
    :cond_0
    const-string v1, "entitlement_init_from_app"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string/jumbo v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public getEntitlementVersion()Ljava/lang/String;
    .locals 3

    .line 232
    iget-object v0, p0, Lcom/sec/internal/ims/aec/persist/AECStorage;->mProviderSettings:Ljava/util/Map;

    const-string v1, "1.0"

    if-nez v0, :cond_0

    .line 233
    return-object v1

    .line 235
    :cond_0
    const-string v2, "entitlement_version"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getHttpResponse()I
    .locals 2

    .line 137
    const-string/jumbo v0, "root/response"

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/aec/persist/AECStorage;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 138
    .local v0, "response":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 139
    const/4 v1, 0x0

    return v1

    .line 141
    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public getImsi()Ljava/lang/String;
    .locals 1

    .line 129
    const-string/jumbo v0, "root/imsi"

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/aec/persist/AECStorage;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNotifAction()Ljava/lang/String;
    .locals 3

    .line 262
    iget-object v0, p0, Lcom/sec/internal/ims/aec/persist/AECStorage;->mProviderSettings:Ljava/util/Map;

    const-string v1, ""

    if-nez v0, :cond_0

    .line 263
    return-object v1

    .line 265
    :cond_0
    const-string v2, "notif_action"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getNotifSenderId()Ljava/lang/String;
    .locals 3

    .line 255
    iget-object v0, p0, Lcom/sec/internal/ims/aec/persist/AECStorage;->mProviderSettings:Ljava/util/Map;

    const-string v1, ""

    if-nez v0, :cond_0

    .line 256
    return-object v1

    .line 258
    :cond_0
    const-string v2, "notif_senderid"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getNotifToken()Ljava/lang/String;
    .locals 1

    .line 153
    const-string/jumbo v0, "root/push-notif-token"

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/aec/persist/AECStorage;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPsDataOff()Z
    .locals 2

    .line 269
    iget-object v0, p0, Lcom/sec/internal/ims/aec/persist/AECStorage;->mProviderSettings:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 270
    const/4 v0, 0x0

    return v0

    .line 272
    :cond_0
    const-string/jumbo v1, "ps_data_off"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string/jumbo v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public getPsDataRoaming()Z
    .locals 2

    .line 276
    iget-object v0, p0, Lcom/sec/internal/ims/aec/persist/AECStorage;->mProviderSettings:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 277
    const/4 v0, 0x0

    return v0

    .line 279
    :cond_0
    const-string/jumbo v1, "ps_data_roaming"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string/jumbo v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public getSMSoIPEntitlementStatus()I
    .locals 1

    .line 173
    const-string/jumbo v0, "root/application/smsoip/entitlementstatus"

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/aec/persist/AECStorage;->getIntValue(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getStoredConfiguration()Landroid/os/Bundle;
    .locals 3

    .line 107
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 108
    .local v0, "bundle":Landroid/os/Bundle;
    iget v1, p0, Lcom/sec/internal/ims/aec/persist/AECStorage;->mPhoneId:I

    const-string/jumbo v2, "phoneId"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 110
    invoke-virtual {p0}, Lcom/sec/internal/ims/aec/persist/AECStorage;->getVersion()I

    move-result v1

    const-string/jumbo v2, "version"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 111
    invoke-virtual {p0}, Lcom/sec/internal/ims/aec/persist/AECStorage;->getHttpResponse()I

    move-result v1

    const-string v2, "http_response"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 112
    invoke-virtual {p0}, Lcom/sec/internal/ims/aec/persist/AECStorage;->getVoLTEEntitlementStatus()I

    move-result v1

    const-string/jumbo v2, "volteEntitlementstatus"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 113
    invoke-virtual {p0}, Lcom/sec/internal/ims/aec/persist/AECStorage;->getVoWiFiActivationMode()I

    move-result v1

    const-string/jumbo v2, "vowifiActivationMode"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 114
    invoke-direct {p0}, Lcom/sec/internal/ims/aec/persist/AECStorage;->getVoWiFiEntitlementStatus()I

    move-result v1

    const-string/jumbo v2, "vowifiEntitlementstatus"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 115
    invoke-direct {p0}, Lcom/sec/internal/ims/aec/persist/AECStorage;->getVoWiFiProvStatus()I

    move-result v1

    const-string/jumbo v2, "prov_status"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 116
    invoke-direct {p0}, Lcom/sec/internal/ims/aec/persist/AECStorage;->getVoWiFiTcStatus()I

    move-result v1

    const-string/jumbo v2, "tc_status"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 117
    invoke-direct {p0}, Lcom/sec/internal/ims/aec/persist/AECStorage;->getVoWiFiAddrStatus()I

    move-result v1

    const-string v2, "addr_status"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 118
    invoke-direct {p0}, Lcom/sec/internal/ims/aec/persist/AECStorage;->getServiceFlowURL()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "serviceflow_url"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    invoke-direct {p0}, Lcom/sec/internal/ims/aec/persist/AECStorage;->getServiceFlowUserData()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "serviceflow_userdata"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    invoke-direct {p0}, Lcom/sec/internal/ims/aec/persist/AECStorage;->getMessageForIncompatible()Ljava/lang/String;

    move-result-object v1

    const-string v2, "messageForIncompatible"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    invoke-virtual {p0}, Lcom/sec/internal/ims/aec/persist/AECStorage;->getSMSoIPEntitlementStatus()I

    move-result v1

    const-string/jumbo v2, "smsoipEntitlementstatus"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 123
    invoke-direct {p0}, Lcom/sec/internal/ims/aec/persist/AECStorage;->getVoLTEAutoOn()Z

    move-result v1

    const-string/jumbo v2, "volteAutoOn"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 124
    invoke-direct {p0}, Lcom/sec/internal/ims/aec/persist/AECStorage;->getVoWiFiAutoOn()Z

    move-result v1

    const-string/jumbo v2, "vowifiAutoOn"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 125
    return-object v0
.end method

.method public getTimeStamp()Ljava/lang/String;
    .locals 1

    .line 157
    const-string/jumbo v0, "root/timestamp"

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/aec/persist/AECStorage;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTokenValidity()I
    .locals 1

    .line 165
    const-string/jumbo v0, "root/token/validity"

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/aec/persist/AECStorage;->getIntValue(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getVersion()I
    .locals 2

    .line 145
    const-string/jumbo v0, "root/vers/version"

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/aec/persist/AECStorage;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 146
    .local v0, "version":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 147
    const-string v0, "0"

    .line 149
    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public getVersionValidity()I
    .locals 1

    .line 161
    const-string/jumbo v0, "root/vers/validity"

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/aec/persist/AECStorage;->getIntValue(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getVoLTEEntitlementStatus()I
    .locals 1

    .line 169
    const-string/jumbo v0, "root/application/volte/entitlementstatus"

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/aec/persist/AECStorage;->getIntValue(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getVoWiFiActivationMode()I
    .locals 4

    .line 177
    invoke-direct {p0}, Lcom/sec/internal/ims/aec/persist/AECStorage;->getVoWiFiEntitlementStatus()I

    move-result v0

    invoke-direct {p0}, Lcom/sec/internal/ims/aec/persist/AECStorage;->getVoWiFiProvStatus()I

    move-result v1

    .line 178
    invoke-direct {p0}, Lcom/sec/internal/ims/aec/persist/AECStorage;->getVoWiFiTcStatus()I

    move-result v2

    invoke-direct {p0}, Lcom/sec/internal/ims/aec/persist/AECStorage;->getVoWiFiAddrStatus()I

    move-result v3

    .line 177
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/sec/internal/ims/aec/persist/AECStorage;->getVoWiFiActivationMode(IIII)I

    move-result v0

    return v0
.end method

.method public setAkaToken(Ljava/lang/String;)V
    .locals 1
    .param p1, "token"    # Ljava/lang/String;

    .line 87
    const-string/jumbo v0, "root/token/token"

    invoke-direct {p0, v0, p1}, Lcom/sec/internal/ims/aec/persist/AECStorage;->setStringValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    return-void
.end method

.method public setConfiguration(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 68
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/aec/persist/AECStorage;->setMap(Ljava/util/Map;)V

    .line 69
    return-void
.end method

.method public setDefaultValues(Ljava/lang/String;)V
    .locals 3
    .param p1, "version"    # Ljava/lang/String;

    .line 72
    const-string/jumbo v0, "root/vers/version"

    invoke-direct {p0, v0, p1}, Lcom/sec/internal/ims/aec/persist/AECStorage;->setStringValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    const-string/jumbo v0, "root/vers/validity"

    const-string v1, "0"

    invoke-direct {p0, v0, v1}, Lcom/sec/internal/ims/aec/persist/AECStorage;->setStringValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    const-string/jumbo v0, "root/token/token"

    const-string v2, ""

    invoke-direct {p0, v0, v2}, Lcom/sec/internal/ims/aec/persist/AECStorage;->setStringValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    const-string/jumbo v0, "root/token/validity"

    invoke-direct {p0, v0, v1}, Lcom/sec/internal/ims/aec/persist/AECStorage;->setStringValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    const-string/jumbo v0, "root/application/volte/entitlementstatus"

    invoke-direct {p0, v0, v1}, Lcom/sec/internal/ims/aec/persist/AECStorage;->setStringValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    const-string/jumbo v0, "root/application/vowifi/entitlementstatus"

    invoke-direct {p0, v0, v1}, Lcom/sec/internal/ims/aec/persist/AECStorage;->setStringValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    const-string/jumbo v0, "root/application/smsoip/entitlementstatus"

    invoke-direct {p0, v0, v1}, Lcom/sec/internal/ims/aec/persist/AECStorage;->setStringValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    const-string/jumbo v0, "root/push-notif-token"

    invoke-direct {p0, v0, v2}, Lcom/sec/internal/ims/aec/persist/AECStorage;->setStringValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    return-void
.end method

.method public setHttpResponse(I)V
    .locals 2
    .param p1, "response"    # I

    .line 91
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "root/response"

    invoke-direct {p0, v1, v0}, Lcom/sec/internal/ims/aec/persist/AECStorage;->setStringValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    return-void
.end method

.method public setImsi(Ljava/lang/String;)V
    .locals 1
    .param p1, "imsi"    # Ljava/lang/String;

    .line 83
    const-string/jumbo v0, "root/imsi"

    invoke-direct {p0, v0, p1}, Lcom/sec/internal/ims/aec/persist/AECStorage;->setStringValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    return-void
.end method

.method public setNotifToken(Ljava/lang/String;)V
    .locals 1
    .param p1, "notifToken"    # Ljava/lang/String;

    .line 99
    const-string/jumbo v0, "root/push-notif-token"

    invoke-direct {p0, v0, p1}, Lcom/sec/internal/ims/aec/persist/AECStorage;->setStringValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    iget v0, p0, Lcom/sec/internal/ims/aec/persist/AECStorage;->mPhoneId:I

    invoke-static {v0, p1}, Lcom/sec/internal/ims/aec/util/ExternalStorage;->setNotifToken(ILjava/lang/String;)V

    .line 101
    return-void
.end method

.method public setVersion(Ljava/lang/String;)V
    .locals 1
    .param p1, "version"    # Ljava/lang/String;

    .line 95
    const-string/jumbo v0, "root/vers/version"

    invoke-direct {p0, v0, p1}, Lcom/sec/internal/ims/aec/persist/AECStorage;->setStringValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    return-void
.end method
