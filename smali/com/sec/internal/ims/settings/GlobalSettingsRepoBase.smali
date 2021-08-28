.class public Lcom/sec/internal/ims/settings/GlobalSettingsRepoBase;
.super Lcom/sec/internal/ims/settings/GlobalSettingsRepo;
.source "GlobalSettingsRepoBase.java"


# instance fields
.field private final LOG_TAG:Ljava/lang/String;

.field protected mAutoUpdate:Lcom/sec/internal/ims/settings/ImsAutoUpdate;

.field protected mCscChanged:Z

.field protected mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

.field protected mMobilityUpdate:Lcom/sec/internal/ims/settings/ImsSimMobilityUpdate;

.field protected mVersionUpdated:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "phoneId"    # I

    .line 73
    invoke-direct {p0}, Lcom/sec/internal/ims/settings/GlobalSettingsRepo;-><init>()V

    .line 64
    const-class v0, Lcom/sec/internal/ims/settings/GlobalSettingsRepoBase;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/settings/GlobalSettingsRepoBase;->LOG_TAG:Ljava/lang/String;

    .line 70
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/internal/ims/settings/GlobalSettingsRepoBase;->mCscChanged:Z

    .line 71
    iput-boolean v0, p0, Lcom/sec/internal/ims/settings/GlobalSettingsRepoBase;->mVersionUpdated:Z

    .line 74
    iput-object p1, p0, Lcom/sec/internal/ims/settings/GlobalSettingsRepoBase;->mContext:Landroid/content/Context;

    .line 75
    iput p2, p0, Lcom/sec/internal/ims/settings/GlobalSettingsRepoBase;->mPhoneId:I

    .line 76
    new-instance v0, Lcom/sec/internal/helper/SimpleEventLog;

    iget-object v1, p0, Lcom/sec/internal/ims/settings/GlobalSettingsRepoBase;->LOG_TAG:Ljava/lang/String;

    const/16 v2, 0x12c

    invoke-direct {v0, p1, v1, v2}, Lcom/sec/internal/helper/SimpleEventLog;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/sec/internal/ims/settings/GlobalSettingsRepoBase;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    .line 77
    iget-object v0, p0, Lcom/sec/internal/ims/settings/GlobalSettingsRepoBase;->mContext:Landroid/content/Context;

    invoke-static {v0, p2}, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->getInstance(Landroid/content/Context;I)Lcom/sec/internal/ims/settings/ImsAutoUpdate;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/settings/GlobalSettingsRepoBase;->mAutoUpdate:Lcom/sec/internal/ims/settings/ImsAutoUpdate;

    .line 78
    iget-object v0, p0, Lcom/sec/internal/ims/settings/GlobalSettingsRepoBase;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/internal/ims/settings/ImsSimMobilityUpdate;->getInstance(Landroid/content/Context;)Lcom/sec/internal/ims/settings/ImsSimMobilityUpdate;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/settings/GlobalSettingsRepoBase;->mMobilityUpdate:Lcom/sec/internal/ims/settings/ImsSimMobilityUpdate;

    .line 79
    return-void
.end method

.method private readSettings(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/Map;
    .locals 10
    .param p1, "spname"    # Ljava/lang/String;
    .param p2, "projection"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 135
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 137
    .local v0, "cv":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    iget v1, p0, Lcom/sec/internal/ims/settings/GlobalSettingsRepoBase;->mPhoneId:I

    iget-object v2, p0, Lcom/sec/internal/ims/settings/GlobalSettingsRepoBase;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-static {v1, v2, p1, v3, v3}, Lcom/sec/internal/helper/ImsSharedPrefHelper;->getSharedPref(ILandroid/content/Context;Ljava/lang/String;IZ)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 140
    .local v1, "sp":Landroid/content/SharedPreferences;
    if-eqz p2, :cond_1

    .line 141
    array-length v2, p2

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_2

    aget-object v5, p2, v4

    .line 142
    .local v5, "key":Ljava/lang/String;
    invoke-interface {v1, v5}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v6

    const/4 v7, 0x0

    if-nez v6, :cond_0

    .line 144
    iget-object v6, p0, Lcom/sec/internal/ims/settings/GlobalSettingsRepoBase;->LOG_TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " No matched key : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    invoke-interface {v0, v5, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    :cond_0
    :try_start_0
    invoke-interface {v1, v5, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 156
    goto :goto_1

    .line 149
    :catch_0
    move-exception v6

    .line 151
    .local v6, "exception":Ljava/lang/ClassCastException;
    :try_start_1
    invoke-interface {v1, v5, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v0, v5, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1

    .line 155
    nop

    .line 141
    .end local v5    # "key":Ljava/lang/String;
    .end local v6    # "exception":Ljava/lang/ClassCastException;
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 152
    .restart local v5    # "key":Ljava/lang/String;
    .restart local v6    # "exception":Ljava/lang/ClassCastException;
    :catch_1
    move-exception v2

    .line 153
    .local v2, "e":Ljava/lang/ClassCastException;
    invoke-virtual {v2}, Ljava/lang/ClassCastException;->printStackTrace()V

    .line 154
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Boolean type is not supported in globalSettings"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 159
    .end local v2    # "e":Ljava/lang/ClassCastException;
    .end local v5    # "key":Ljava/lang/String;
    .end local v6    # "exception":Ljava/lang/ClassCastException;
    :cond_1
    invoke-interface {v1}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 161
    :cond_2
    return-object v0
.end method


# virtual methods
.method public dump()V
    .locals 8

    .line 965
    iget-object v0, p0, Lcom/sec/internal/ims/settings/GlobalSettingsRepoBase;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    invoke-virtual {v0}, Lcom/sec/internal/helper/SimpleEventLog;->dump()V

    .line 967
    iget v0, p0, Lcom/sec/internal/ims/settings/GlobalSettingsRepoBase;->mPhoneId:I

    iget-object v1, p0, Lcom/sec/internal/ims/settings/GlobalSettingsRepoBase;->mContext:Landroid/content/Context;

    const-string v2, "globalsettings"

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3, v3}, Lcom/sec/internal/helper/ImsSharedPrefHelper;->getSharedPref(ILandroid/content/Context;Ljava/lang/String;IZ)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 970
    .local v0, "sp":Landroid/content/SharedPreferences;
    if-eqz v0, :cond_1

    const-string v1, "loaded"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 971
    invoke-interface {v0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v1

    .line 972
    .local v1, "settings":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    const-string v2, "imsi"

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 974
    iget-object v2, p0, Lcom/sec/internal/ims/settings/GlobalSettingsRepoBase;->LOG_TAG:Ljava/lang/String;

    invoke-static {v2}, Lcom/sec/internal/log/IMSLog;->increaseIndent(Ljava/lang/String;)V

    .line 975
    iget-object v2, p0, Lcom/sec/internal/ims/settings/GlobalSettingsRepoBase;->LOG_TAG:Ljava/lang/String;

    iget v3, p0, Lcom/sec/internal/ims/settings/GlobalSettingsRepoBase;->mPhoneId:I

    const-string v4, "\nLast values of GlobalSettings:"

    invoke-static {v2, v3, v4}, Lcom/sec/internal/log/IMSLog;->dump(Ljava/lang/String;ILjava/lang/String;)V

    .line 976
    iget-object v2, p0, Lcom/sec/internal/ims/settings/GlobalSettingsRepoBase;->LOG_TAG:Ljava/lang/String;

    invoke-static {v2}, Lcom/sec/internal/log/IMSLog;->increaseIndent(Ljava/lang/String;)V

    .line 977
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

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

    .line 978
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;*>;"
    iget-object v4, p0, Lcom/sec/internal/ims/settings/GlobalSettingsRepoBase;->LOG_TAG:Ljava/lang/String;

    iget v5, p0, Lcom/sec/internal/ims/settings/GlobalSettingsRepoBase;->mPhoneId:I

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " = ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/sec/internal/log/IMSLog;->dump(Ljava/lang/String;ILjava/lang/String;)V

    .line 979
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;*>;"
    goto :goto_0

    .line 980
    :cond_0
    iget-object v2, p0, Lcom/sec/internal/ims/settings/GlobalSettingsRepoBase;->LOG_TAG:Ljava/lang/String;

    invoke-static {v2}, Lcom/sec/internal/log/IMSLog;->decreaseIndent(Ljava/lang/String;)V

    .line 981
    iget-object v2, p0, Lcom/sec/internal/ims/settings/GlobalSettingsRepoBase;->LOG_TAG:Ljava/lang/String;

    invoke-static {v2}, Lcom/sec/internal/log/IMSLog;->decreaseIndent(Ljava/lang/String;)V

    .line 983
    .end local v1    # "settings":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    :cond_1
    return-void
.end method

.method public getGlobalGcEnabled()Z
    .locals 5

    .line 932
    iget v0, p0, Lcom/sec/internal/ims/settings/GlobalSettingsRepoBase;->mPhoneId:I

    iget-object v1, p0, Lcom/sec/internal/ims/settings/GlobalSettingsRepoBase;->mContext:Landroid/content/Context;

    const-string v2, "globalsettings"

    const-string v3, "globalgcenabled"

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Lcom/sec/internal/helper/ImsSharedPrefHelper;->getBoolean(ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method protected getPrevGcEnabled()Z
    .locals 4

    .line 646
    iget v0, p0, Lcom/sec/internal/ims/settings/GlobalSettingsRepoBase;->mPhoneId:I

    iget-object v1, p0, Lcom/sec/internal/ims/settings/GlobalSettingsRepoBase;->mContext:Landroid/content/Context;

    const-string v2, "imsswitch"

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3, v3}, Lcom/sec/internal/helper/ImsSharedPrefHelper;->getSharedPref(ILandroid/content/Context;Ljava/lang/String;IZ)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 648
    .local v0, "sp":Landroid/content/SharedPreferences;
    const-string/jumbo v1, "prevGcEnabled"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 649
    .local v1, "prevGcEnabled":Z
    return v1
.end method

.method protected getPreviousCscImsSettingType(Landroid/content/SharedPreferences;)I
    .locals 2
    .param p1, "sp"    # Landroid/content/SharedPreferences;

    .line 901
    const-string v0, "cscimssettingtype"

    const/4 v1, -0x1

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method protected getPreviousGcfMode(Landroid/content/SharedPreferences;)Z
    .locals 2
    .param p1, "sp"    # Landroid/content/SharedPreferences;

    .line 905
    const-string v0, "gcfmode"

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method protected getPreviousHasSim(Landroid/content/SharedPreferences;)Z
    .locals 2
    .param p1, "sp"    # Landroid/content/SharedPreferences;

    .line 897
    const-string v0, "hassim"

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method protected getPreviousImsi(Landroid/content/SharedPreferences;)Ljava/lang/String;
    .locals 2
    .param p1, "sp"    # Landroid/content/SharedPreferences;

    .line 921
    const-string v0, "imsi"

    const-string v1, ""

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPreviousMno()Ljava/lang/String;
    .locals 5

    .line 926
    iget v0, p0, Lcom/sec/internal/ims/settings/GlobalSettingsRepoBase;->mPhoneId:I

    iget-object v1, p0, Lcom/sec/internal/ims/settings/GlobalSettingsRepoBase;->mContext:Landroid/content/Context;

    const-string v2, "globalsettings"

    const-string v3, "mnoname"

    const-string v4, ""

    invoke-static {v0, v1, v2, v3, v4}, Lcom/sec/internal/helper/ImsSharedPrefHelper;->getString(ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getPreviousMno(Landroid/content/SharedPreferences;)Ljava/lang/String;
    .locals 2
    .param p1, "sp"    # Landroid/content/SharedPreferences;

    .line 909
    const-string v0, "mnoname"

    const-string v1, ""

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getPreviousMvno(Landroid/content/SharedPreferences;)Ljava/lang/String;
    .locals 2
    .param p1, "sp"    # Landroid/content/SharedPreferences;

    .line 913
    const-string v0, "mvnoname"

    const-string v1, ""

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getPreviousNwCode(Landroid/content/SharedPreferences;)Ljava/lang/String;
    .locals 2
    .param p1, "sp"    # Landroid/content/SharedPreferences;

    .line 893
    iget v0, p0, Lcom/sec/internal/ims/settings/GlobalSettingsRepoBase;->mPhoneId:I

    invoke-static {v0}, Lcom/sec/internal/helper/OmcCode;->getNWCode(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "nwcode"

    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getPreviousNwName(Landroid/content/SharedPreferences;)Ljava/lang/String;
    .locals 2
    .param p1, "sp"    # Landroid/content/SharedPreferences;

    .line 917
    const-string v0, "NetworkName"

    const-string v1, ""

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected initRcsUserSetting(II)V
    .locals 5
    .param p1, "spValue"    # I
    .param p2, "globalDefault"    # I

    .line 662
    move v0, p2

    .line 663
    .local v0, "rcs_switch":I
    iget-object v1, p0, Lcom/sec/internal/ims/settings/GlobalSettingsRepoBase;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/sec/internal/ims/settings/GlobalSettingsRepoBase;->mPhoneId:I

    const/4 v3, -0x3

    invoke-static {v1, v3, v2}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->getRcsUserSetting(Landroid/content/Context;II)I

    move-result v1

    .line 665
    .local v1, "systemSetting":I
    iget-object v2, p0, Lcom/sec/internal/ims/settings/GlobalSettingsRepoBase;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "simSlot["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/sec/internal/ims/settings/GlobalSettingsRepoBase;->mPhoneId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "] initRcsUserSetting: system ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "], sp ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "], default ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 668
    const/4 v2, -0x1

    if-eq p1, v2, :cond_0

    .line 669
    move v0, p1

    .line 672
    :cond_0
    const v2, 0x10020006

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, p0, Lcom/sec/internal/ims/settings/GlobalSettingsRepoBase;->mPhoneId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "GLB:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 673
    if-ne v1, v0, :cond_1

    .line 674
    return-void

    .line 677
    :cond_1
    iget-object v2, p0, Lcom/sec/internal/ims/settings/GlobalSettingsRepoBase;->mContext:Landroid/content/Context;

    iget v3, p0, Lcom/sec/internal/ims/settings/GlobalSettingsRepoBase;->mPhoneId:I

    invoke-static {v2, v0, v3}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->setRcsUserSetting(Landroid/content/Context;II)V

    .line 678
    return-void
.end method

.method public isLoaded()Z
    .locals 5

    .line 321
    iget v0, p0, Lcom/sec/internal/ims/settings/GlobalSettingsRepoBase;->mPhoneId:I

    iget-object v1, p0, Lcom/sec/internal/ims/settings/GlobalSettingsRepoBase;->mContext:Landroid/content/Context;

    const-string v2, "globalsettings"

    const-string v3, "loaded"

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Lcom/sec/internal/helper/ImsSharedPrefHelper;->getBoolean(ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isNeedToBeSetViLTE(Landroid/content/ContentValues;)Z
    .locals 10
    .param p1, "mnoinfo"    # Landroid/content/ContentValues;

    .line 705
    const/4 v0, 0x0

    .line 706
    .local v0, "isNeedToSetViLTE":Z
    const-string v1, "mnoname"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 707
    .local v1, "newMnoname":Ljava/lang/String;
    iget v2, p0, Lcom/sec/internal/ims/settings/GlobalSettingsRepoBase;->mPhoneId:I

    iget-object v3, p0, Lcom/sec/internal/ims/settings/GlobalSettingsRepoBase;->mContext:Landroid/content/Context;

    const-string v4, "globalsettings"

    const/4 v5, 0x0

    invoke-static {v2, v3, v4, v5, v5}, Lcom/sec/internal/helper/ImsSharedPrefHelper;->getSharedPref(ILandroid/content/Context;Ljava/lang/String;IZ)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 709
    .local v2, "sp":Landroid/content/SharedPreferences;
    invoke-virtual {p0, v2}, Lcom/sec/internal/ims/settings/GlobalSettingsRepoBase;->getPreviousMno(Landroid/content/SharedPreferences;)Ljava/lang/String;

    move-result-object v3

    .line 710
    .local v3, "prevMnoname":Ljava/lang/String;
    iget v4, p0, Lcom/sec/internal/ims/settings/GlobalSettingsRepoBase;->mPhoneId:I

    invoke-virtual {p0, v4}, Lcom/sec/internal/ims/settings/GlobalSettingsRepoBase;->needResetCallSettingBySim(I)Z

    move-result v4

    const-string/jumbo v5, "simSlot["

    if-eqz v4, :cond_0

    .line 711
    iget-object v4, p0, Lcom/sec/internal/ims/settings/GlobalSettingsRepoBase;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, p0, Lcom/sec/internal/ims/settings/GlobalSettingsRepoBase;->mPhoneId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "] reset vt call settings db by simcard change"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 712
    const/4 v0, 0x1

    goto :goto_0

    .line 713
    :cond_0
    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 714
    iget-object v4, p0, Lcom/sec/internal/ims/settings/GlobalSettingsRepoBase;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, p0, Lcom/sec/internal/ims/settings/GlobalSettingsRepoBase;->mPhoneId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "] reset video call settings db by simcard change"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 715
    const/4 v0, 0x1

    .line 718
    :cond_1
    :goto_0
    invoke-static {v1}, Lcom/sec/internal/constants/Mno;->fromName(Ljava/lang/String;)Lcom/sec/internal/constants/Mno;

    move-result-object v4

    .line 720
    .local v4, "mno":Lcom/sec/internal/constants/Mno;
    iget-object v6, p0, Lcom/sec/internal/ims/settings/GlobalSettingsRepoBase;->mContext:Landroid/content/Context;

    sget-object v7, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->VILTE_SLOT1:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    .line 721
    invoke-virtual {v7}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;->getName()Ljava/lang/String;

    move-result-object v7

    iget v8, p0, Lcom/sec/internal/ims/settings/GlobalSettingsRepoBase;->mPhoneId:I

    .line 720
    invoke-static {v6, v7, v8}, Lcom/sec/internal/helper/DmConfigHelper;->getImsUserSetting(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v6

    .line 722
    .local v6, "spValueVideo":I
    iget-object v7, p0, Lcom/sec/internal/ims/settings/GlobalSettingsRepoBase;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, p0, Lcom/sec/internal/ims/settings/GlobalSettingsRepoBase;->mPhoneId:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, "] videocall_type_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/sec/internal/constants/Mno;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ": ["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, "]"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 724
    invoke-static {}, Lcom/sec/internal/helper/os/DeviceUtil;->getGcfMode()Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-nez v7, :cond_2

    .line 725
    iget-object v7, p0, Lcom/sec/internal/ims/settings/GlobalSettingsRepoBase;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/sec/internal/ims/settings/GlobalSettingsRepoBase;->mPhoneId:I

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "] NOT Temporal SIM swapped: Set Video DB - "

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 727
    const/4 v5, -0x1

    if-eq v6, v5, :cond_2

    .line 728
    const/4 v0, 0x1

    .line 732
    :cond_2
    return v0
.end method

.method public isNeedToBeSetVoLTE(Landroid/content/ContentValues;)Z
    .locals 9
    .param p1, "mnoinfo"    # Landroid/content/ContentValues;

    .line 737
    const/4 v0, 0x0

    .line 738
    .local v0, "isNeedToSetVoLTE":Z
    iget-object v1, p0, Lcom/sec/internal/ims/settings/GlobalSettingsRepoBase;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->VOLTE_SLOT1:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;->getName()Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lcom/sec/internal/ims/settings/GlobalSettingsRepoBase;->mPhoneId:I

    invoke-static {v1, v2, v3}, Lcom/sec/internal/helper/DmConfigHelper;->getImsUserSetting(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    .line 739
    .local v1, "spValueVolte":I
    iget v2, p0, Lcom/sec/internal/ims/settings/GlobalSettingsRepoBase;->mPhoneId:I

    iget-object v3, p0, Lcom/sec/internal/ims/settings/GlobalSettingsRepoBase;->mContext:Landroid/content/Context;

    const-string v4, "globalsettings"

    const/4 v5, 0x0

    invoke-static {v2, v3, v4, v5, v5}, Lcom/sec/internal/helper/ImsSharedPrefHelper;->getSharedPref(ILandroid/content/Context;Ljava/lang/String;IZ)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 741
    .local v2, "sp":Landroid/content/SharedPreferences;
    const-string v3, "mnoname"

    invoke-virtual {p1, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 742
    .local v3, "newMnoname":Ljava/lang/String;
    invoke-virtual {p0, v2}, Lcom/sec/internal/ims/settings/GlobalSettingsRepoBase;->getPreviousMno(Landroid/content/SharedPreferences;)Ljava/lang/String;

    move-result-object v4

    .line 744
    .local v4, "prevMnoname":Ljava/lang/String;
    const/4 v5, -0x1

    if-eq v1, v5, :cond_0

    .line 745
    const/4 v0, 0x1

    goto :goto_0

    .line 746
    :cond_0
    iget v5, p0, Lcom/sec/internal/ims/settings/GlobalSettingsRepoBase;->mPhoneId:I

    invoke-virtual {p0, v5}, Lcom/sec/internal/ims/settings/GlobalSettingsRepoBase;->needResetCallSettingBySim(I)Z

    move-result v5

    const-string v6, "] reset voice call settings db by simcard change"

    const-string/jumbo v7, "simSlot["

    if-eqz v5, :cond_1

    .line 748
    iget-object v5, p0, Lcom/sec/internal/ims/settings/GlobalSettingsRepoBase;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, p0, Lcom/sec/internal/ims/settings/GlobalSettingsRepoBase;->mPhoneId:I

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 749
    const/4 v0, 0x1

    goto :goto_0

    .line 750
    :cond_1
    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 751
    iget-object v5, p0, Lcom/sec/internal/ims/settings/GlobalSettingsRepoBase;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, p0, Lcom/sec/internal/ims/settings/GlobalSettingsRepoBase;->mPhoneId:I

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 752
    const/4 v0, 0x1

    .line 755
    :cond_2
    :goto_0
    return v0
.end method

.method protected isVersionUpdated()Z
    .locals 7

    .line 937
    const-string/jumbo v0, "ro.build.PDA"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 938
    .local v0, "pdaVer":Ljava/lang/String;
    const-string/jumbo v2, "ril.official_cscver"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 939
    .local v2, "cscVer":Ljava/lang/String;
    iget v3, p0, Lcom/sec/internal/ims/settings/GlobalSettingsRepoBase;->mPhoneId:I

    iget-object v4, p0, Lcom/sec/internal/ims/settings/GlobalSettingsRepoBase;->mContext:Landroid/content/Context;

    const-string v5, "globalsettings"

    const-string v6, "buildinfo"

    invoke-static {v3, v4, v5, v6, v1}, Lcom/sec/internal/helper/ImsSharedPrefHelper;->getString(ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 942
    .local v1, "prevVer":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 944
    .local v3, "currVer":Ljava/lang/String;
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 945
    const/4 v4, 0x1

    return v4

    .line 947
    :cond_0
    const/4 v4, 0x0

    return v4
.end method

.method public load()V
    .locals 7

    .line 199
    iget-object v0, p0, Lcom/sec/internal/ims/settings/GlobalSettingsRepoBase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 201
    :try_start_0
    invoke-virtual {p0}, Lcom/sec/internal/ims/settings/GlobalSettingsRepoBase;->isLoaded()Z

    move-result v1

    if-nez v1, :cond_1

    .line 202
    const/4 v1, 0x0

    .line 203
    .local v1, "hassim":Z
    iget v2, p0, Lcom/sec/internal/ims/settings/GlobalSettingsRepoBase;->mPhoneId:I

    invoke-static {v2}, Lcom/sec/internal/helper/OmcCode;->getNWCode(I)Ljava/lang/String;

    move-result-object v2

    .line 204
    .local v2, "omcnwCode":Ljava/lang/String;
    invoke-static {v2}, Lcom/sec/internal/constants/Mno;->fromSalesCode(Ljava/lang/String;)Lcom/sec/internal/constants/Mno;

    move-result-object v3

    .line 205
    .local v3, "mno":Lcom/sec/internal/constants/Mno;
    iget-object v4, p0, Lcom/sec/internal/ims/settings/GlobalSettingsRepoBase;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "load: initial with OMCNW_CODE("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ") Mno="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/sec/internal/constants/Mno;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->isSoftphoneEnabled()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 207
    const/4 v1, 0x1

    .line 209
    :cond_0
    invoke-virtual {v3}, Lcom/sec/internal/constants/Mno;->getName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    invoke-virtual {p0, v1, v4, v5, v6}, Lcom/sec/internal/ims/settings/GlobalSettingsRepoBase;->loadGlobalSettingsFromJson(ZLjava/lang/String;ILandroid/content/ContentValues;)V

    .line 211
    .end local v1    # "hassim":Z
    .end local v2    # "omcnwCode":Ljava/lang/String;
    .end local v3    # "mno":Lcom/sec/internal/constants/Mno;
    :cond_1
    monitor-exit v0

    .line 212
    return-void

    .line 211
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public loadByDynamicConfig()V
    .locals 12

    .line 297
    iget-object v0, p0, Lcom/sec/internal/ims/settings/GlobalSettingsRepoBase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 298
    :try_start_0
    iget-object v1, p0, Lcom/sec/internal/ims/settings/GlobalSettingsRepoBase;->mMnoinfo:Landroid/content/ContentValues;

    if-eqz v1, :cond_3

    .line 299
    iget-object v1, p0, Lcom/sec/internal/ims/settings/GlobalSettingsRepoBase;->mMnoinfo:Landroid/content/ContentValues;

    const-string v2, "hassim"

    invoke-virtual {v1, v2}, Landroid/content/ContentValues;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    .line 300
    .local v1, "hasSIM":Ljava/lang/Boolean;
    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 301
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    move-object v1, v3

    .line 303
    :cond_0
    iget-object v3, p0, Lcom/sec/internal/ims/settings/GlobalSettingsRepoBase;->mMnoinfo:Landroid/content/ContentValues;

    const-string v4, "globalgcenabled"

    invoke-virtual {v3, v4}, Landroid/content/ContentValues;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v3

    .line 304
    .local v3, "isGlobalGcEnabled":Ljava/lang/Boolean;
    if-nez v3, :cond_1

    .line 305
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    move-object v3, v4

    .line 307
    :cond_1
    iget-object v4, p0, Lcom/sec/internal/ims/settings/GlobalSettingsRepoBase;->mMnoinfo:Landroid/content/ContentValues;

    const-string v5, "mnoname"

    invoke-virtual {v4, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 308
    .local v8, "newMnoname":Ljava/lang/String;
    iget-object v4, p0, Lcom/sec/internal/ims/settings/GlobalSettingsRepoBase;->mMnoinfo:Landroid/content/ContentValues;

    const-string v5, "mvnoname"

    invoke-virtual {v4, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 309
    .local v9, "newMvnoname":Ljava/lang/String;
    iget-object v4, p0, Lcom/sec/internal/ims/settings/GlobalSettingsRepoBase;->mMnoinfo:Landroid/content/ContentValues;

    const-string v5, "imsSwitchType"

    invoke-virtual {v4, v5}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    .line 310
    .local v4, "imsSwitchType":Ljava/lang/Integer;
    if-nez v4, :cond_2

    .line 311
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object v4, v2

    .line 314
    :cond_2
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v10

    iget-object v11, p0, Lcom/sec/internal/ims/settings/GlobalSettingsRepoBase;->mMnoinfo:Landroid/content/ContentValues;

    move-object v6, p0

    invoke-virtual/range {v6 .. v11}, Lcom/sec/internal/ims/settings/GlobalSettingsRepoBase;->loadGlobalSettingsFromJson(ZLjava/lang/String;Ljava/lang/String;ILandroid/content/ContentValues;)V

    .line 315
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {p0, v2}, Lcom/sec/internal/ims/settings/GlobalSettingsRepoBase;->loadGlobalGcSettings(Z)V

    .line 317
    .end local v1    # "hasSIM":Ljava/lang/Boolean;
    .end local v3    # "isGlobalGcEnabled":Ljava/lang/Boolean;
    .end local v4    # "imsSwitchType":Ljava/lang/Integer;
    .end local v8    # "newMnoname":Ljava/lang/String;
    .end local v9    # "newMvnoname":Ljava/lang/String;
    :cond_3
    monitor-exit v0

    .line 318
    return-void

    .line 317
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected loadGlobalGcSettings(Z)V
    .locals 17
    .param p1, "isGlobalGcEnabled"    # Z

    .line 216
    move-object/from16 v1, p0

    move/from16 v2, p1

    iget-object v0, v1, Lcom/sec/internal/ims/settings/GlobalSettingsRepoBase;->LOG_TAG:Ljava/lang/String;

    iget v3, v1, Lcom/sec/internal/ims/settings/GlobalSettingsRepoBase;->mPhoneId:I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "loadGlobalGcSettings isGlobalGcEnabled="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v3, v4}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    .line 218
    iget v0, v1, Lcom/sec/internal/ims/settings/GlobalSettingsRepoBase;->mPhoneId:I

    iget-object v3, v1, Lcom/sec/internal/ims/settings/GlobalSettingsRepoBase;->mContext:Landroid/content/Context;

    const-string v4, "globalgcsettings"

    const/4 v5, 0x0

    invoke-static {v0, v3, v4, v5, v5}, Lcom/sec/internal/helper/ImsSharedPrefHelper;->getSharedPref(ILandroid/content/Context;Ljava/lang/String;IZ)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 220
    .local v3, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    .line 221
    .local v4, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 223
    if-eqz v2, :cond_c

    .line 225
    iget-object v0, v1, Lcom/sec/internal/ims/settings/GlobalSettingsRepoBase;->LOG_TAG:Ljava/lang/String;

    iget v5, v1, Lcom/sec/internal/ims/settings/GlobalSettingsRepoBase;->mPhoneId:I

    const-string v6, " getResources : globalsettings.json"

    invoke-static {v0, v5, v6}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    .line 229
    :try_start_0
    iget-object v0, v1, Lcom/sec/internal/ims/settings/GlobalSettingsRepoBase;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v5, 0x7f050000

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v5, v0

    .line 230
    .local v5, "inputStream":Ljava/io/InputStream;
    :try_start_1
    new-instance v0, Lcom/google/gson/stream/JsonReader;

    new-instance v6, Ljava/io/BufferedReader;

    new-instance v7, Ljava/io/InputStreamReader;

    invoke-direct {v7, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v6, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    invoke-direct {v0, v6}, Lcom/google/gson/stream/JsonReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-object v6, v0

    .line 231
    .local v6, "reader":Lcom/google/gson/stream/JsonReader;
    :try_start_2
    new-instance v0, Lcom/google/gson/JsonParser;

    invoke-direct {v0}, Lcom/google/gson/JsonParser;-><init>()V

    .line 232
    .local v0, "parser":Lcom/google/gson/JsonParser;
    invoke-virtual {v0, v6}, Lcom/google/gson/JsonParser;->parse(Lcom/google/gson/stream/JsonReader;)Lcom/google/gson/JsonElement;

    move-result-object v7

    .line 233
    .local v7, "element":Lcom/google/gson/JsonElement;
    invoke-virtual {v6}, Lcom/google/gson/stream/JsonReader;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 234
    :try_start_3
    invoke-virtual {v6}, Lcom/google/gson/stream/JsonReader;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .end local v6    # "reader":Lcom/google/gson/stream/JsonReader;
    if-eqz v5, :cond_0

    :try_start_4
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 237
    .end local v5    # "inputStream":Ljava/io/InputStream;
    :cond_0
    nop

    .line 239
    invoke-virtual {v7}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v5

    .line 240
    .local v5, "object":Lcom/google/gson/JsonObject;
    const-string v6, "globalsetting"

    invoke-virtual {v5, v6}, Lcom/google/gson/JsonObject;->getAsJsonArray(Ljava/lang/String;)Lcom/google/gson/JsonArray;

    move-result-object v6

    .line 241
    .local v6, "globalSettingsArray":Lcom/google/gson/JsonArray;
    invoke-static {v6}, Lcom/sec/internal/helper/JsonUtil;->isValidJsonElement(Lcom/google/gson/JsonElement;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 242
    iget-object v8, v1, Lcom/sec/internal/ims/settings/GlobalSettingsRepoBase;->LOG_TAG:Ljava/lang/String;

    iget v9, v1, Lcom/sec/internal/ims/settings/GlobalSettingsRepoBase;->mPhoneId:I

    const-string v10, "load: parse failed."

    invoke-static {v8, v9, v10}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    .line 243
    return-void

    .line 246
    :cond_1
    sget-object v8, Lcom/google/gson/JsonNull;->INSTANCE:Lcom/google/gson/JsonNull;

    .line 247
    .local v8, "gcElement":Lcom/google/gson/JsonElement;
    invoke-virtual {v6}, Lcom/google/gson/JsonArray;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/google/gson/JsonElement;

    .line 248
    .local v10, "elem":Lcom/google/gson/JsonElement;
    invoke-virtual {v10}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v11

    .line 249
    .local v11, "obj":Lcom/google/gson/JsonObject;
    invoke-virtual {v10}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v12

    const-string v13, "mnoname"

    invoke-virtual {v12, v13}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v12

    invoke-virtual {v12}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v12

    .line 250
    .local v12, "name":Ljava/lang/String;
    const-string v13, "GoogleGC_ALL"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 252
    move-object v8, v11

    .line 253
    iget-object v9, v1, Lcom/sec/internal/ims/settings/GlobalSettingsRepoBase;->LOG_TAG:Ljava/lang/String;

    iget v13, v1, Lcom/sec/internal/ims/settings/GlobalSettingsRepoBase;->mPhoneId:I

    const-string v14, "loadGlobalGcSettings GoogleGC_ALL found"

    invoke-static {v9, v13, v14}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    .line 254
    goto :goto_1

    .line 256
    .end local v10    # "elem":Lcom/google/gson/JsonElement;
    .end local v11    # "obj":Lcom/google/gson/JsonObject;
    .end local v12    # "name":Ljava/lang/String;
    :cond_2
    goto :goto_0

    .line 258
    :cond_3
    :goto_1
    invoke-virtual {v8}, Lcom/google/gson/JsonElement;->isJsonNull()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 259
    iget-object v9, v1, Lcom/sec/internal/ims/settings/GlobalSettingsRepoBase;->LOG_TAG:Ljava/lang/String;

    iget v10, v1, Lcom/sec/internal/ims/settings/GlobalSettingsRepoBase;->mPhoneId:I

    const-string v11, "loadGlobalGcSettings GoogleGC_ALL is not exist"

    invoke-static {v9, v10, v11}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 260
    return-void

    .line 263
    :cond_4
    iget-object v9, v1, Lcom/sec/internal/ims/settings/GlobalSettingsRepoBase;->mAutoUpdate:Lcom/sec/internal/ims/settings/ImsAutoUpdate;

    if-eqz v9, :cond_5

    .line 264
    invoke-virtual {v9, v8}, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->getUpdatedGlobalSetting(Lcom/google/gson/JsonElement;)Lcom/google/gson/JsonElement;

    move-result-object v8

    .line 267
    :cond_5
    invoke-virtual {v8}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v9

    .line 269
    .local v9, "gcObject":Lcom/google/gson/JsonObject;
    invoke-virtual {v9}, Lcom/google/gson/JsonObject;->entrySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_a

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/Map$Entry;

    .line 270
    .local v11, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/google/gson/JsonElement;>;"
    invoke-interface {v11}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 271
    .local v12, "key":Ljava/lang/String;
    invoke-interface {v11}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/google/gson/JsonElement;

    .line 273
    .local v13, "value":Lcom/google/gson/JsonElement;
    iget-object v14, v1, Lcom/sec/internal/ims/settings/GlobalSettingsRepoBase;->LOG_TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v16, v0

    .end local v0    # "parser":Lcom/google/gson/JsonParser;
    .local v16, "parser":Lcom/google/gson/JsonParser;
    const-string/jumbo v0, "save : "

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "="

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v14, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    if-eqz v13, :cond_9

    .line 275
    invoke-virtual {v13}, Lcom/google/gson/JsonElement;->isJsonArray()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 276
    invoke-virtual {v13}, Lcom/google/gson/JsonElement;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v12, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_3

    .line 278
    :cond_6
    invoke-virtual {v13}, Lcom/google/gson/JsonElement;->getAsJsonPrimitive()Lcom/google/gson/JsonPrimitive;

    move-result-object v0

    .line 279
    .local v0, "primitive":Lcom/google/gson/JsonPrimitive;
    invoke-virtual {v0}, Lcom/google/gson/JsonPrimitive;->isBoolean()Z

    move-result v14

    if-eqz v14, :cond_8

    .line 280
    invoke-virtual {v0}, Lcom/google/gson/JsonPrimitive;->getAsBoolean()Z

    move-result v14

    if-eqz v14, :cond_7

    .line 281
    const-string v14, "1"

    invoke-interface {v4, v12, v14}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_3

    .line 283
    :cond_7
    const-string v14, "0"

    invoke-interface {v4, v12, v14}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_3

    .line 286
    :cond_8
    invoke-virtual {v13}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v4, v12, v14}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 290
    .end local v0    # "primitive":Lcom/google/gson/JsonPrimitive;
    .end local v11    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/google/gson/JsonElement;>;"
    .end local v12    # "key":Ljava/lang/String;
    .end local v13    # "value":Lcom/google/gson/JsonElement;
    :cond_9
    :goto_3
    move-object/from16 v0, v16

    goto :goto_2

    .line 269
    .end local v16    # "parser":Lcom/google/gson/JsonParser;
    .local v0, "parser":Lcom/google/gson/JsonParser;
    :cond_a
    move-object/from16 v16, v0

    .end local v0    # "parser":Lcom/google/gson/JsonParser;
    .restart local v16    # "parser":Lcom/google/gson/JsonParser;
    goto :goto_6

    .line 229
    .end local v7    # "element":Lcom/google/gson/JsonElement;
    .end local v8    # "gcElement":Lcom/google/gson/JsonElement;
    .end local v9    # "gcObject":Lcom/google/gson/JsonObject;
    .end local v16    # "parser":Lcom/google/gson/JsonParser;
    .local v5, "inputStream":Ljava/io/InputStream;
    .local v6, "reader":Lcom/google/gson/stream/JsonReader;
    :catchall_0
    move-exception v0

    move-object v7, v0

    :try_start_5
    invoke-virtual {v6}, Lcom/google/gson/stream/JsonReader;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_4

    :catchall_1
    move-exception v0

    move-object v8, v0

    :try_start_6
    invoke-virtual {v7, v8}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v3    # "sp":Landroid/content/SharedPreferences;
    .end local v4    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v5    # "inputStream":Ljava/io/InputStream;
    .end local p0    # "this":Lcom/sec/internal/ims/settings/GlobalSettingsRepoBase;
    .end local p1    # "isGlobalGcEnabled":Z
    :goto_4
    throw v7
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .end local v6    # "reader":Lcom/google/gson/stream/JsonReader;
    .restart local v3    # "sp":Landroid/content/SharedPreferences;
    .restart local v4    # "editor":Landroid/content/SharedPreferences$Editor;
    .restart local v5    # "inputStream":Ljava/io/InputStream;
    .restart local p0    # "this":Lcom/sec/internal/ims/settings/GlobalSettingsRepoBase;
    .restart local p1    # "isGlobalGcEnabled":Z
    :catchall_2
    move-exception v0

    move-object v6, v0

    if-eqz v5, :cond_b

    :try_start_7
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    goto :goto_5

    :catchall_3
    move-exception v0

    move-object v7, v0

    :try_start_8
    invoke-virtual {v6, v7}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v3    # "sp":Landroid/content/SharedPreferences;
    .end local v4    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local p0    # "this":Lcom/sec/internal/ims/settings/GlobalSettingsRepoBase;
    .end local p1    # "isGlobalGcEnabled":Z
    :cond_b
    :goto_5
    throw v6
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0

    .line 234
    .end local v5    # "inputStream":Ljava/io/InputStream;
    .restart local v3    # "sp":Landroid/content/SharedPreferences;
    .restart local v4    # "editor":Landroid/content/SharedPreferences$Editor;
    .restart local p0    # "this":Lcom/sec/internal/ims/settings/GlobalSettingsRepoBase;
    .restart local p1    # "isGlobalGcEnabled":Z
    :catch_0
    move-exception v0

    .line 235
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 236
    return-void

    .line 292
    .end local v0    # "e":Ljava/io/IOException;
    :cond_c
    :goto_6
    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 293
    return-void
.end method

.method public loadGlobalSettingsFromJson(ZLjava/lang/String;ILandroid/content/ContentValues;)V
    .locals 6
    .param p1, "hasSIM"    # Z
    .param p2, "mnoname"    # Ljava/lang/String;
    .param p3, "cscImsSettings"    # I
    .param p4, "mnoinfo"    # Landroid/content/ContentValues;

    .line 327
    const-string v3, ""

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/sec/internal/ims/settings/GlobalSettingsRepoBase;->loadGlobalSettingsFromJson(ZLjava/lang/String;Ljava/lang/String;ILandroid/content/ContentValues;)V

    .line 328
    return-void
.end method

.method protected loadGlobalSettingsFromJson(ZLjava/lang/String;Ljava/lang/String;ILandroid/content/ContentValues;)V
    .locals 26
    .param p1, "hasSIM"    # Z
    .param p2, "mnoname"    # Ljava/lang/String;
    .param p3, "mvnoname"    # Ljava/lang/String;
    .param p4, "imsSwitchType"    # I
    .param p5, "mnoinfo"    # Landroid/content/ContentValues;

    .line 332
    move-object/from16 v1, p0

    move/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move/from16 v5, p4

    move-object/from16 v6, p5

    iget-object v0, v1, Lcom/sec/internal/ims/settings/GlobalSettingsRepoBase;->LOG_TAG:Ljava/lang/String;

    iget v7, v1, Lcom/sec/internal/ims/settings/GlobalSettingsRepoBase;->mPhoneId:I

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "loadGlobalSettings: mnoname="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ",  mvnoname="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v7, v8}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    .line 334
    if-eqz v3, :cond_14

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_c

    .line 338
    :cond_0
    invoke-static/range {p2 .. p2}, Lcom/sec/internal/constants/Mno;->fromName(Ljava/lang/String;)Lcom/sec/internal/constants/Mno;

    move-result-object v7

    .line 340
    .local v7, "mno":Lcom/sec/internal/constants/Mno;
    const/4 v0, 0x3

    if-ne v5, v0, :cond_1

    .line 341
    iget-object v0, v1, Lcom/sec/internal/ims/settings/GlobalSettingsRepoBase;->mMobilityUpdate:Lcom/sec/internal/ims/settings/ImsSimMobilityUpdate;

    invoke-virtual {v0}, Lcom/sec/internal/ims/settings/ImsSimMobilityUpdate;->loadMobilityGlobalSettings()Z

    .line 346
    :cond_1
    const/4 v8, 0x0

    .line 352
    .local v8, "inputStream":Ljava/io/InputStream;
    :try_start_0
    iget-object v0, v1, Lcom/sec/internal/ims/settings/GlobalSettingsRepoBase;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v9, 0x7f050000

    invoke-virtual {v0, v9}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object v8, v0

    .line 353
    :try_start_1
    new-instance v0, Lcom/google/gson/JsonParser;

    invoke-direct {v0}, Lcom/google/gson/JsonParser;-><init>()V

    move-object v9, v0

    .line 354
    .local v9, "parser":Lcom/google/gson/JsonParser;
    new-instance v0, Lcom/google/gson/stream/JsonReader;

    new-instance v10, Ljava/io/BufferedReader;

    new-instance v11, Ljava/io/InputStreamReader;

    invoke-direct {v11, v8}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v10, v11}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    invoke-direct {v0, v10}, Lcom/google/gson/stream/JsonReader;-><init>(Ljava/io/Reader;)V

    move-object v10, v0

    .line 355
    .local v10, "reader":Lcom/google/gson/stream/JsonReader;
    invoke-virtual {v9, v10}, Lcom/google/gson/JsonParser;->parse(Lcom/google/gson/stream/JsonReader;)Lcom/google/gson/JsonElement;

    move-result-object v0

    move-object v11, v0

    .line 356
    .local v11, "element":Lcom/google/gson/JsonElement;
    invoke-virtual {v10}, Lcom/google/gson/stream/JsonReader;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 361
    if-eqz v8, :cond_2

    .line 363
    :try_start_2
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 366
    :goto_0
    goto :goto_1

    .line 364
    :catch_0
    move-exception v0

    move-object v12, v0

    move-object v0, v12

    .line 365
    .local v0, "e1":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .end local v0    # "e1":Ljava/io/IOException;
    goto :goto_0

    .line 370
    :cond_2
    :goto_1
    invoke-virtual {v11}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v0

    .line 372
    .local v0, "object":Lcom/google/gson/JsonObject;
    const-string v12, "defaultsetting"

    invoke-virtual {v0, v12}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v12

    .line 373
    .local v12, "defaultElement":Lcom/google/gson/JsonElement;
    invoke-virtual {v12}, Lcom/google/gson/JsonElement;->isJsonNull()Z

    move-result v13

    if-eqz v13, :cond_3

    .line 374
    iget-object v13, v1, Lcom/sec/internal/ims/settings/GlobalSettingsRepoBase;->LOG_TAG:Ljava/lang/String;

    iget v14, v1, Lcom/sec/internal/ims/settings/GlobalSettingsRepoBase;->mPhoneId:I

    const-string v15, "load: No default setting."

    invoke-static {v13, v14, v15}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    .line 375
    return-void

    .line 378
    :cond_3
    const-string v13, "nohitsetting"

    invoke-virtual {v0, v13}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v13

    .line 379
    .local v13, "nohitElement":Lcom/google/gson/JsonElement;
    iget-object v14, v1, Lcom/sec/internal/ims/settings/GlobalSettingsRepoBase;->mAutoUpdate:Lcom/sec/internal/ims/settings/ImsAutoUpdate;

    if-eqz v14, :cond_4

    .line 380
    invoke-virtual {v14, v13}, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->applyNohitSettingUpdate(Lcom/google/gson/JsonElement;)Lcom/google/gson/JsonElement;

    move-result-object v13

    .line 381
    iget-object v14, v1, Lcom/sec/internal/ims/settings/GlobalSettingsRepoBase;->mAutoUpdate:Lcom/sec/internal/ims/settings/ImsAutoUpdate;

    invoke-virtual {v14, v12}, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->applyDefaultSettingUpdate(Lcom/google/gson/JsonElement;)Lcom/google/gson/JsonElement;

    move-result-object v12

    .line 384
    :cond_4
    sget-object v14, Lcom/google/gson/JsonNull;->INSTANCE:Lcom/google/gson/JsonNull;

    .line 385
    .local v14, "matchElement":Lcom/google/gson/JsonElement;
    sget-object v15, Lcom/sec/internal/constants/Mno;->DEFAULT:Lcom/sec/internal/constants/Mno;

    move-object/from16 v16, v8

    .end local v8    # "inputStream":Ljava/io/InputStream;
    .local v16, "inputStream":Ljava/io/InputStream;
    const-string v8, "mnoname"

    if-eq v7, v15, :cond_e

    .line 386
    const-string v15, "globalsetting"

    invoke-virtual {v0, v15}, Lcom/google/gson/JsonObject;->getAsJsonArray(Ljava/lang/String;)Lcom/google/gson/JsonArray;

    move-result-object v15

    .line 387
    .local v15, "globalSettingsArray":Lcom/google/gson/JsonArray;
    invoke-static {v15}, Lcom/sec/internal/helper/JsonUtil;->isValidJsonElement(Lcom/google/gson/JsonElement;)Z

    move-result v17

    if-nez v17, :cond_5

    .line 388
    iget-object v8, v1, Lcom/sec/internal/ims/settings/GlobalSettingsRepoBase;->LOG_TAG:Ljava/lang/String;

    move-object/from16 v17, v0

    .end local v0    # "object":Lcom/google/gson/JsonObject;
    .local v17, "object":Lcom/google/gson/JsonObject;
    iget v0, v1, Lcom/sec/internal/ims/settings/GlobalSettingsRepoBase;->mPhoneId:I

    move-object/from16 v18, v9

    .end local v9    # "parser":Lcom/google/gson/JsonParser;
    .local v18, "parser":Lcom/google/gson/JsonParser;
    const-string v9, "load: parse failed."

    invoke-static {v8, v0, v9}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    .line 389
    return-void

    .line 392
    .end local v17    # "object":Lcom/google/gson/JsonObject;
    .end local v18    # "parser":Lcom/google/gson/JsonParser;
    .restart local v0    # "object":Lcom/google/gson/JsonObject;
    .restart local v9    # "parser":Lcom/google/gson/JsonParser;
    :cond_5
    move-object/from16 v17, v0

    move-object/from16 v18, v9

    .end local v0    # "object":Lcom/google/gson/JsonObject;
    .end local v9    # "parser":Lcom/google/gson/JsonParser;
    .restart local v17    # "object":Lcom/google/gson/JsonObject;
    .restart local v18    # "parser":Lcom/google/gson/JsonParser;
    invoke-virtual {v15}, Lcom/google/gson/JsonArray;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/gson/JsonElement;

    .line 393
    .local v9, "elem":Lcom/google/gson/JsonElement;
    invoke-virtual {v9}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v19

    .line 394
    .local v19, "obj":Lcom/google/gson/JsonObject;
    move-object/from16 v20, v0

    invoke-virtual {v9}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v0

    invoke-virtual {v0, v8}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v0

    .line 395
    .local v0, "name":Ljava/lang/String;
    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v21

    move-object/from16 v22, v9

    .end local v9    # "elem":Lcom/google/gson/JsonElement;
    .local v22, "elem":Lcom/google/gson/JsonElement;
    const-string v9, " found"

    if-nez v21, :cond_7

    .line 396
    move-object/from16 v21, v10

    .end local v10    # "reader":Lcom/google/gson/stream/JsonReader;
    .local v21, "reader":Lcom/google/gson/stream/JsonReader;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v23, v11

    .end local v11    # "element":Lcom/google/gson/JsonElement;
    .local v23, "element":Lcom/google/gson/JsonElement;
    sget-char v11, Lcom/sec/internal/constants/Mno;->MVNO_DELIMITER:C

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 397
    .local v10, "fullMnoName":Ljava/lang/String;
    invoke-virtual {v0, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 399
    move-object/from16 v14, v19

    .line 400
    iget-object v11, v1, Lcom/sec/internal/ims/settings/GlobalSettingsRepoBase;->LOG_TAG:Ljava/lang/String;

    iget v4, v1, Lcom/sec/internal/ims/settings/GlobalSettingsRepoBase;->mPhoneId:I

    move-object/from16 v24, v10

    .end local v10    # "fullMnoName":Ljava/lang/String;
    .local v24, "fullMnoName":Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v20, v14

    .end local v14    # "matchElement":Lcom/google/gson/JsonElement;
    .local v20, "matchElement":Lcom/google/gson/JsonElement;
    const-string v14, "loadGlobalSettings - mvnoname on json:"

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v11, v4, v9}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    .line 401
    move-object/from16 v14, v20

    goto :goto_4

    .line 402
    .end local v20    # "matchElement":Lcom/google/gson/JsonElement;
    .end local v24    # "fullMnoName":Ljava/lang/String;
    .restart local v10    # "fullMnoName":Ljava/lang/String;
    .restart local v14    # "matchElement":Lcom/google/gson/JsonElement;
    :cond_6
    move-object/from16 v24, v10

    .end local v10    # "fullMnoName":Ljava/lang/String;
    .restart local v24    # "fullMnoName":Ljava/lang/String;
    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 404
    move-object/from16 v14, v19

    .line 405
    iget-object v4, v1, Lcom/sec/internal/ims/settings/GlobalSettingsRepoBase;->LOG_TAG:Ljava/lang/String;

    iget v10, v1, Lcom/sec/internal/ims/settings/GlobalSettingsRepoBase;->mPhoneId:I

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v25, v14

    .end local v14    # "matchElement":Lcom/google/gson/JsonElement;
    .local v25, "matchElement":Lcom/google/gson/JsonElement;
    const-string v14, "loadGlobalSettings - primary mnoname on json:"

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v4, v10, v9}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    move-object/from16 v14, v25

    goto :goto_3

    .line 408
    .end local v21    # "reader":Lcom/google/gson/stream/JsonReader;
    .end local v23    # "element":Lcom/google/gson/JsonElement;
    .end local v24    # "fullMnoName":Ljava/lang/String;
    .end local v25    # "matchElement":Lcom/google/gson/JsonElement;
    .local v10, "reader":Lcom/google/gson/stream/JsonReader;
    .restart local v11    # "element":Lcom/google/gson/JsonElement;
    .restart local v14    # "matchElement":Lcom/google/gson/JsonElement;
    :cond_7
    move-object/from16 v21, v10

    move-object/from16 v23, v11

    .end local v10    # "reader":Lcom/google/gson/stream/JsonReader;
    .end local v11    # "element":Lcom/google/gson/JsonElement;
    .restart local v21    # "reader":Lcom/google/gson/stream/JsonReader;
    .restart local v23    # "element":Lcom/google/gson/JsonElement;
    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 410
    move-object/from16 v14, v19

    .line 411
    iget-object v4, v1, Lcom/sec/internal/ims/settings/GlobalSettingsRepoBase;->LOG_TAG:Ljava/lang/String;

    iget v10, v1, Lcom/sec/internal/ims/settings/GlobalSettingsRepoBase;->mPhoneId:I

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v20, v14

    .end local v14    # "matchElement":Lcom/google/gson/JsonElement;
    .restart local v20    # "matchElement":Lcom/google/gson/JsonElement;
    const-string v14, "loadGlobalSettings - mnoname on json:"

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v4, v10, v9}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    .line 412
    move-object/from16 v14, v20

    goto :goto_4

    .line 408
    .end local v20    # "matchElement":Lcom/google/gson/JsonElement;
    .restart local v14    # "matchElement":Lcom/google/gson/JsonElement;
    :cond_8
    :goto_3
    nop

    .line 414
    .end local v0    # "name":Ljava/lang/String;
    .end local v19    # "obj":Lcom/google/gson/JsonObject;
    .end local v22    # "elem":Lcom/google/gson/JsonElement;
    move-object/from16 v4, p3

    move-object/from16 v0, v20

    move-object/from16 v10, v21

    move-object/from16 v11, v23

    goto/16 :goto_2

    .line 392
    .end local v21    # "reader":Lcom/google/gson/stream/JsonReader;
    .end local v23    # "element":Lcom/google/gson/JsonElement;
    .restart local v10    # "reader":Lcom/google/gson/stream/JsonReader;
    .restart local v11    # "element":Lcom/google/gson/JsonElement;
    :cond_9
    move-object/from16 v21, v10

    move-object/from16 v23, v11

    .line 416
    .end local v10    # "reader":Lcom/google/gson/stream/JsonReader;
    .end local v11    # "element":Lcom/google/gson/JsonElement;
    .restart local v21    # "reader":Lcom/google/gson/stream/JsonReader;
    .restart local v23    # "element":Lcom/google/gson/JsonElement;
    :goto_4
    invoke-virtual {v14}, Lcom/google/gson/JsonElement;->isJsonNull()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 418
    sget-object v0, Lcom/sec/internal/constants/Mno;->GENERIC:Lcom/sec/internal/constants/Mno;

    if-ne v7, v0, :cond_b

    .line 419
    new-instance v0, Lcom/google/gson/JsonObject;

    invoke-direct {v0}, Lcom/google/gson/JsonObject;-><init>()V

    .line 420
    .local v0, "matchObj":Lcom/google/gson/JsonObject;
    invoke-virtual {v0, v8, v3}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 421
    move-object v4, v0

    .line 423
    .end local v14    # "matchElement":Lcom/google/gson/JsonElement;
    .local v4, "matchElement":Lcom/google/gson/JsonElement;
    iget-object v9, v1, Lcom/sec/internal/ims/settings/GlobalSettingsRepoBase;->mAutoUpdate:Lcom/sec/internal/ims/settings/ImsAutoUpdate;

    if-eqz v9, :cond_a

    .line 424
    invoke-virtual {v9, v4}, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->getUpdatedGlobalSetting(Lcom/google/gson/JsonElement;)Lcom/google/gson/JsonElement;

    move-result-object v4

    move-object v14, v4

    goto :goto_5

    .line 423
    :cond_a
    move-object v14, v4

    .line 426
    .end local v0    # "matchObj":Lcom/google/gson/JsonObject;
    .end local v4    # "matchElement":Lcom/google/gson/JsonElement;
    .restart local v14    # "matchElement":Lcom/google/gson/JsonElement;
    :goto_5
    goto :goto_6

    .line 429
    :cond_b
    iget-object v0, v1, Lcom/sec/internal/ims/settings/GlobalSettingsRepoBase;->LOG_TAG:Ljava/lang/String;

    iget v4, v1, Lcom/sec/internal/ims/settings/GlobalSettingsRepoBase;->mPhoneId:I

    const-string v9, "load: No matched setting load default setting"

    invoke-static {v0, v4, v9}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    .line 430
    move-object v14, v13

    goto :goto_6

    .line 434
    :cond_c
    iget-object v0, v1, Lcom/sec/internal/ims/settings/GlobalSettingsRepoBase;->mAutoUpdate:Lcom/sec/internal/ims/settings/ImsAutoUpdate;

    if-eqz v0, :cond_d

    .line 435
    invoke-virtual {v0, v14}, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->getUpdatedGlobalSetting(Lcom/google/gson/JsonElement;)Lcom/google/gson/JsonElement;

    move-result-object v14

    .line 440
    :cond_d
    :goto_6
    invoke-static {v12, v14}, Lcom/sec/internal/helper/JsonUtil;->merge(Lcom/google/gson/JsonElement;Lcom/google/gson/JsonElement;)Lcom/google/gson/JsonElement;

    move-result-object v0

    .line 441
    .end local v14    # "matchElement":Lcom/google/gson/JsonElement;
    .end local v15    # "globalSettingsArray":Lcom/google/gson/JsonArray;
    .local v0, "matchElement":Lcom/google/gson/JsonElement;
    goto :goto_7

    .line 443
    .end local v17    # "object":Lcom/google/gson/JsonObject;
    .end local v18    # "parser":Lcom/google/gson/JsonParser;
    .end local v21    # "reader":Lcom/google/gson/stream/JsonReader;
    .end local v23    # "element":Lcom/google/gson/JsonElement;
    .local v0, "object":Lcom/google/gson/JsonObject;
    .local v9, "parser":Lcom/google/gson/JsonParser;
    .restart local v10    # "reader":Lcom/google/gson/stream/JsonReader;
    .restart local v11    # "element":Lcom/google/gson/JsonElement;
    .restart local v14    # "matchElement":Lcom/google/gson/JsonElement;
    :cond_e
    move-object/from16 v17, v0

    move-object/from16 v18, v9

    move-object/from16 v21, v10

    move-object/from16 v23, v11

    .end local v0    # "object":Lcom/google/gson/JsonObject;
    .end local v9    # "parser":Lcom/google/gson/JsonParser;
    .end local v10    # "reader":Lcom/google/gson/stream/JsonReader;
    .end local v11    # "element":Lcom/google/gson/JsonElement;
    .restart local v17    # "object":Lcom/google/gson/JsonObject;
    .restart local v18    # "parser":Lcom/google/gson/JsonParser;
    .restart local v21    # "reader":Lcom/google/gson/stream/JsonReader;
    .restart local v23    # "element":Lcom/google/gson/JsonElement;
    invoke-static {v12, v13}, Lcom/sec/internal/helper/JsonUtil;->merge(Lcom/google/gson/JsonElement;Lcom/google/gson/JsonElement;)Lcom/google/gson/JsonElement;

    move-result-object v0

    .line 445
    .end local v14    # "matchElement":Lcom/google/gson/JsonElement;
    .local v0, "matchElement":Lcom/google/gson/JsonElement;
    :goto_7
    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v4

    .line 447
    .local v4, "matchObject":Lcom/google/gson/JsonObject;
    iget v9, v1, Lcom/sec/internal/ims/settings/GlobalSettingsRepoBase;->mPhoneId:I

    invoke-static {v9}, Lcom/sec/internal/helper/OmcCode;->getNWCode(I)Ljava/lang/String;

    move-result-object v9

    const-string v10, "XAS"

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_f

    .line 448
    invoke-virtual {v1, v4}, Lcom/sec/internal/ims/settings/GlobalSettingsRepoBase;->overwriteXasGlobalSettings(Lcom/google/gson/JsonObject;)V

    .line 452
    :cond_f
    invoke-virtual {v1, v4}, Lcom/sec/internal/ims/settings/GlobalSettingsRepoBase;->save(Lcom/google/gson/JsonObject;)V

    .line 455
    sget-object v9, Lcom/sec/internal/constants/Mno;->DEFAULT:Lcom/sec/internal/constants/Mno;

    if-eq v7, v9, :cond_10

    if-eqz v2, :cond_10

    .line 456
    invoke-virtual {v1, v4, v6}, Lcom/sec/internal/ims/settings/GlobalSettingsRepoBase;->setInitialSettings(Lcom/google/gson/JsonObject;Landroid/content/ContentValues;)V

    .line 459
    :cond_10
    iget v9, v1, Lcom/sec/internal/ims/settings/GlobalSettingsRepoBase;->mPhoneId:I

    iget-object v10, v1, Lcom/sec/internal/ims/settings/GlobalSettingsRepoBase;->mContext:Landroid/content/Context;

    const-string v11, "globalsettings"

    const/4 v14, 0x0

    invoke-static {v9, v10, v11, v14, v14}, Lcom/sec/internal/helper/ImsSharedPrefHelper;->getSharedPref(ILandroid/content/Context;Ljava/lang/String;IZ)Landroid/content/SharedPreferences;

    move-result-object v9

    .line 460
    invoke-interface {v9}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    .line 461
    .local v9, "editor":Landroid/content/SharedPreferences$Editor;
    const/4 v10, 0x1

    const-string v11, "loaded"

    invoke-interface {v9, v11, v10}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 462
    iget v10, v1, Lcom/sec/internal/ims/settings/GlobalSettingsRepoBase;->mPhoneId:I

    invoke-static {v10}, Lcom/sec/internal/helper/OmcCode;->getNWCode(I)Ljava/lang/String;

    move-result-object v10

    const-string v11, "nwcode"

    invoke-interface {v9, v11, v10}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 463
    invoke-interface {v9, v8, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 464
    const-string v8, "cscimssettingtype"

    invoke-interface {v9, v8, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 465
    const-string v8, "hassim"

    invoke-interface {v9, v8, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 467
    invoke-static {}, Lcom/sec/internal/helper/os/DeviceUtil;->getGcfMode()Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    const-string v10, "gcfmode"

    invoke-interface {v9, v10, v8}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 468
    invoke-virtual/range {p0 .. p0}, Lcom/sec/internal/ims/settings/GlobalSettingsRepoBase;->saveBuildInfo()Ljava/lang/String;

    move-result-object v8

    const-string v10, "buildinfo"

    invoke-interface {v9, v10, v8}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 469
    const-string v8, "imsi"

    invoke-virtual {v6, v8}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 470
    .local v10, "imsi":Ljava/lang/String;
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_11

    .line 471
    invoke-interface {v9, v8, v10}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 473
    :cond_11
    invoke-interface {v9}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 474
    return-void

    .line 361
    .end local v0    # "matchElement":Lcom/google/gson/JsonElement;
    .end local v4    # "matchObject":Lcom/google/gson/JsonObject;
    .end local v9    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v10    # "imsi":Ljava/lang/String;
    .end local v12    # "defaultElement":Lcom/google/gson/JsonElement;
    .end local v13    # "nohitElement":Lcom/google/gson/JsonElement;
    .end local v16    # "inputStream":Ljava/io/InputStream;
    .end local v17    # "object":Lcom/google/gson/JsonObject;
    .end local v18    # "parser":Lcom/google/gson/JsonParser;
    .end local v21    # "reader":Lcom/google/gson/stream/JsonReader;
    .end local v23    # "element":Lcom/google/gson/JsonElement;
    .restart local v8    # "inputStream":Ljava/io/InputStream;
    :catchall_0
    move-exception v0

    move-object/from16 v16, v8

    move-object v4, v0

    .end local v8    # "inputStream":Ljava/io/InputStream;
    .restart local v16    # "inputStream":Ljava/io/InputStream;
    goto :goto_a

    .line 357
    .end local v16    # "inputStream":Ljava/io/InputStream;
    .restart local v8    # "inputStream":Ljava/io/InputStream;
    :catch_1
    move-exception v0

    move-object/from16 v16, v8

    .end local v8    # "inputStream":Ljava/io/InputStream;
    .restart local v16    # "inputStream":Ljava/io/InputStream;
    goto :goto_8

    .line 361
    .end local v16    # "inputStream":Ljava/io/InputStream;
    .restart local v8    # "inputStream":Ljava/io/InputStream;
    :catchall_1
    move-exception v0

    move-object v4, v0

    goto :goto_a

    .line 357
    :catch_2
    move-exception v0

    :goto_8
    move-object v4, v0

    .line 358
    .local v4, "e":Ljava/io/IOException;
    :try_start_3
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 361
    if-eqz v8, :cond_12

    .line 363
    :try_start_4
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 366
    goto :goto_9

    .line 364
    :catch_3
    move-exception v0

    move-object v9, v0

    move-object v0, v9

    .line 365
    .local v0, "e1":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 359
    .end local v0    # "e1":Ljava/io/IOException;
    :cond_12
    :goto_9
    return-void

    .line 361
    .end local v4    # "e":Ljava/io/IOException;
    :goto_a
    if-eqz v8, :cond_13

    .line 363
    :try_start_5
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    .line 366
    goto :goto_b

    .line 364
    :catch_4
    move-exception v0

    move-object v9, v0

    move-object v0, v9

    .line 365
    .restart local v0    # "e1":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 368
    .end local v0    # "e1":Ljava/io/IOException;
    :cond_13
    :goto_b
    throw v4

    .line 335
    .end local v7    # "mno":Lcom/sec/internal/constants/Mno;
    .end local v8    # "inputStream":Ljava/io/InputStream;
    :cond_14
    :goto_c
    iget-object v0, v1, Lcom/sec/internal/ims/settings/GlobalSettingsRepoBase;->LOG_TAG:Ljava/lang/String;

    iget v4, v1, Lcom/sec/internal/ims/settings/GlobalSettingsRepoBase;->mPhoneId:I

    const-string v7, "load: globalSettings is not identified."

    invoke-static {v0, v4, v7}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    .line 336
    return-void
.end method

.method protected logMnoInfo(Landroid/content/ContentValues;)V
    .locals 4
    .param p1, "mnoinfo"    # Landroid/content/ContentValues;

    .line 513
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0, p1}, Landroid/content/ContentValues;-><init>(Landroid/content/ContentValues;)V

    .line 515
    .local v0, "cv":Landroid/content/ContentValues;
    const-string v1, "imsi"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 516
    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 518
    :cond_0
    iget-object v1, p0, Lcom/sec/internal/ims/settings/GlobalSettingsRepoBase;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "simSlot["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/sec/internal/ims/settings/GlobalSettingsRepoBase;->mPhoneId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "] updateMno: mnoInfo:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 519
    return-void
.end method

.method protected overwriteXasGlobalSettings(Lcom/google/gson/JsonObject;)V
    .locals 2
    .param p1, "target"    # Lcom/google/gson/JsonObject;

    .line 477
    const-string/jumbo v0, "voice_domain_pref_eutran"

    const-string v1, "3"

    invoke-virtual {p1, v0, v1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 478
    const-string v0, "emergency_domain_setting"

    const-string v1, "PS"

    invoke-virtual {p1, v0, v1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 479
    const-string/jumbo v0, "ss_domain_setting"

    const-string/jumbo v1, "ps_only_psregied"

    invoke-virtual {p1, v0, v1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 480
    return-void
.end method

.method public query([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    .locals 7
    .param p1, "projection"    # [Ljava/lang/String;
    .param p2, "selection"    # Ljava/lang/String;
    .param p3, "args"    # [Ljava/lang/String;

    .line 168
    invoke-virtual {p0}, Lcom/sec/internal/ims/settings/GlobalSettingsRepoBase;->isLoaded()Z

    move-result v0

    if-nez v0, :cond_0

    .line 169
    iget-object v0, p0, Lcom/sec/internal/ims/settings/GlobalSettingsRepoBase;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "query: globalsettings not loaded. loading now."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    invoke-virtual {p0}, Lcom/sec/internal/ims/settings/GlobalSettingsRepoBase;->load()V

    .line 173
    :cond_0
    const-string v0, "globalsettings"

    invoke-direct {p0, v0, p1}, Lcom/sec/internal/ims/settings/GlobalSettingsRepoBase;->readSettings(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 174
    .local v0, "fromGlobalSettings":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1, v0}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 175
    .local v1, "cv":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-virtual {p0}, Lcom/sec/internal/ims/settings/GlobalSettingsRepoBase;->getGlobalGcEnabled()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 176
    const-string v2, "globalgcsettings"

    invoke-direct {p0, v2, p1}, Lcom/sec/internal/ims/settings/GlobalSettingsRepoBase;->readSettings(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    .line 178
    .local v2, "fromGcSettings":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 179
    .local v4, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 180
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    const-string v6, "block_regi_on_invalid_isim"

    invoke-static {v5, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    const-string/jumbo v6, "voice_domain_pref_eutran"

    invoke-static {v5, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_1

    .line 184
    :cond_1
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v1, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 181
    :cond_2
    :goto_1
    iget-object v5, p0, Lcom/sec/internal/ims/settings/GlobalSettingsRepoBase;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v6, "query: Don\'t override block_regi_on_invalid_isim and voice_domain_pref_eutran value"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    goto :goto_0

    .line 186
    .end local v4    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_3
    :goto_2
    goto :goto_0

    .line 189
    .end local v2    # "fromGcSettings":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_4
    new-instance v2, Landroid/database/MatrixCursor;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    invoke-direct {v2, v3}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 190
    .local v2, "cursor":Landroid/database/MatrixCursor;
    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/database/MatrixCursor;->addRow(Ljava/lang/Iterable;)V

    .line 192
    return-object v2
.end method

.method protected readRcsDefaultEnabled()I
    .locals 5

    .line 991
    iget v0, p0, Lcom/sec/internal/ims/settings/GlobalSettingsRepoBase;->mPhoneId:I

    iget-object v1, p0, Lcom/sec/internal/ims/settings/GlobalSettingsRepoBase;->mContext:Landroid/content/Context;

    const-string v2, "globalsettings"

    const-string/jumbo v3, "rcs_default_enabled"

    const-string v4, "-1"

    invoke-static {v0, v1, v2, v3, v4}, Lcom/sec/internal/helper/ImsSharedPrefHelper;->getString(ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method protected readVolteDefaultEnabled()I
    .locals 5

    .line 986
    iget v0, p0, Lcom/sec/internal/ims/settings/GlobalSettingsRepoBase;->mPhoneId:I

    iget-object v1, p0, Lcom/sec/internal/ims/settings/GlobalSettingsRepoBase;->mContext:Landroid/content/Context;

    const-string v2, "globalsettings"

    const-string/jumbo v3, "volte_domestic_default_enabled"

    const-string v4, "-1"

    invoke-static {v0, v1, v2, v3, v4}, Lcom/sec/internal/helper/ImsSharedPrefHelper;->getString(ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public removeVolteMenuByCsc()Z
    .locals 3

    .line 958
    invoke-static {}, Lcom/sec/internal/helper/os/ImsCscFeature;->getInstance()Lcom/sec/internal/helper/os/ImsCscFeature;

    move-result-object v0

    iget v1, p0, Lcom/sec/internal/ims/settings/GlobalSettingsRepoBase;->mPhoneId:I

    const-string v2, "CscFeature_VoiceCall_ConfigOpStyleMobileNetworkSettingMenu"

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/helper/os/ImsCscFeature;->getString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 959
    invoke-virtual {v0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 960
    .local v0, "cscfeatureTag":Ljava/lang/String;
    const-string v1, "-VOLTECALL"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/sec/internal/ims/settings/GlobalSettingsRepoBase;->mPhoneId:I

    invoke-static {v1}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->isOutboundSim(I)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public reset()V
    .locals 5

    .line 874
    iget-object v0, p0, Lcom/sec/internal/ims/settings/GlobalSettingsRepoBase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 875
    :try_start_0
    invoke-virtual {p0}, Lcom/sec/internal/ims/settings/GlobalSettingsRepoBase;->isLoaded()Z

    move-result v1

    if-nez v1, :cond_0

    .line 877
    monitor-exit v0

    return-void

    .line 879
    :cond_0
    iget v1, p0, Lcom/sec/internal/ims/settings/GlobalSettingsRepoBase;->mPhoneId:I

    iget-object v2, p0, Lcom/sec/internal/ims/settings/GlobalSettingsRepoBase;->mContext:Landroid/content/Context;

    const-string v3, "globalsettings"

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4, v4}, Lcom/sec/internal/helper/ImsSharedPrefHelper;->getSharedPref(ILandroid/content/Context;Ljava/lang/String;IZ)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 881
    .local v1, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 882
    .local v2, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 883
    const-string v3, "loaded"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 884
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 885
    .end local v1    # "sp":Landroid/content/SharedPreferences;
    .end local v2    # "editor":Landroid/content/SharedPreferences$Editor;
    monitor-exit v0

    .line 886
    return-void

    .line 885
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public resetUserSettingAsDefault(ZZZ)V
    .locals 5
    .param p1, "isNeedToResetVoice"    # Z
    .param p2, "isNeedToResetVideo"    # Z
    .param p3, "isNeedToResetRcs"    # Z

    .line 760
    const-string v0, ",SET:"

    const/4 v1, -0x1

    if-eqz p1, :cond_0

    .line 761
    iget-object v2, p0, Lcom/sec/internal/ims/settings/GlobalSettingsRepoBase;->mContext:Landroid/content/Context;

    iget v3, p0, Lcom/sec/internal/ims/settings/GlobalSettingsRepoBase;->mPhoneId:I

    invoke-static {v2, v1, v3}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->setVoiceCallType(Landroid/content/Context;II)V

    .line 762
    const/high16 v2, 0x10020000

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, p0, Lcom/sec/internal/ims/settings/GlobalSettingsRepoBase;->mPhoneId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 765
    :cond_0
    if-eqz p2, :cond_1

    .line 766
    iget-object v2, p0, Lcom/sec/internal/ims/settings/GlobalSettingsRepoBase;->mContext:Landroid/content/Context;

    iget v3, p0, Lcom/sec/internal/ims/settings/GlobalSettingsRepoBase;->mPhoneId:I

    invoke-static {v2, v1, v3}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->setVideoCallType(Landroid/content/Context;II)V

    .line 767
    const v2, 0x10020001

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, p0, Lcom/sec/internal/ims/settings/GlobalSettingsRepoBase;->mPhoneId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 770
    :cond_1
    if-eqz p3, :cond_2

    .line 771
    iget-object v2, p0, Lcom/sec/internal/ims/settings/GlobalSettingsRepoBase;->mContext:Landroid/content/Context;

    iget v3, p0, Lcom/sec/internal/ims/settings/GlobalSettingsRepoBase;->mPhoneId:I

    invoke-static {v2, v1, v3}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->setRcsUserSetting(Landroid/content/Context;II)V

    .line 772
    const v2, 0x10020005

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, p0, Lcom/sec/internal/ims/settings/GlobalSettingsRepoBase;->mPhoneId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 774
    :cond_2
    return-void
.end method

.method protected save(Landroid/content/ContentValues;)V
    .locals 7
    .param p1, "cv"    # Landroid/content/ContentValues;

    .line 119
    iget v0, p0, Lcom/sec/internal/ims/settings/GlobalSettingsRepoBase;->mPhoneId:I

    iget-object v1, p0, Lcom/sec/internal/ims/settings/GlobalSettingsRepoBase;->mContext:Landroid/content/Context;

    const-string v2, "globalsettings"

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3, v3}, Lcom/sec/internal/helper/ImsSharedPrefHelper;->getSharedPref(ILandroid/content/Context;Ljava/lang/String;IZ)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 121
    .local v0, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 122
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-virtual {p1}, Landroid/content/ContentValues;->valueSet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 123
    .local v3, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v4, p0, Lcom/sec/internal/ims/settings/GlobalSettingsRepoBase;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "   "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    :cond_0
    const-string v6, "null"

    :goto_1
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 123
    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 127
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 129
    .end local v3    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_1
    goto :goto_0

    .line 131
    :cond_2
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 132
    return-void
.end method

.method protected save(Lcom/google/gson/JsonObject;)V
    .locals 9
    .param p1, "valuesObj"    # Lcom/google/gson/JsonObject;

    .line 88
    iget v0, p0, Lcom/sec/internal/ims/settings/GlobalSettingsRepoBase;->mPhoneId:I

    iget-object v1, p0, Lcom/sec/internal/ims/settings/GlobalSettingsRepoBase;->mContext:Landroid/content/Context;

    const-string v2, "globalsettings"

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3, v3}, Lcom/sec/internal/helper/ImsSharedPrefHelper;->getSharedPref(ILandroid/content/Context;Ljava/lang/String;IZ)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 90
    .local v0, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 92
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-virtual {p1}, Lcom/google/gson/JsonObject;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 93
    .local v3, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/google/gson/JsonElement;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 94
    .local v4, "key":Ljava/lang/String;
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/gson/JsonElement;

    .line 96
    .local v5, "value":Lcom/google/gson/JsonElement;
    iget-object v6, p0, Lcom/sec/internal/ims/settings/GlobalSettingsRepoBase;->LOG_TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "save : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v5, :cond_0

    invoke-virtual {v5}, Lcom/google/gson/JsonElement;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_1

    :cond_0
    const-string v8, "null"

    :goto_1
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    if-eqz v5, :cond_4

    .line 98
    invoke-virtual {v5}, Lcom/google/gson/JsonElement;->isJsonArray()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 99
    invoke-virtual {v5}, Lcom/google/gson/JsonElement;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v4, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_2

    .line 101
    :cond_1
    invoke-virtual {v5}, Lcom/google/gson/JsonElement;->getAsJsonPrimitive()Lcom/google/gson/JsonPrimitive;

    move-result-object v6

    .line 102
    .local v6, "primitive":Lcom/google/gson/JsonPrimitive;
    invoke-virtual {v6}, Lcom/google/gson/JsonPrimitive;->isBoolean()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 103
    invoke-virtual {v6}, Lcom/google/gson/JsonPrimitive;->getAsBoolean()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 104
    const-string v7, "1"

    invoke-interface {v1, v4, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_2

    .line 106
    :cond_2
    const-string v7, "0"

    invoke-interface {v1, v4, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_2

    .line 109
    :cond_3
    invoke-virtual {v5}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v1, v4, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 113
    .end local v3    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/google/gson/JsonElement;>;"
    .end local v4    # "key":Ljava/lang/String;
    .end local v5    # "value":Lcom/google/gson/JsonElement;
    .end local v6    # "primitive":Lcom/google/gson/JsonPrimitive;
    :cond_4
    :goto_2
    goto :goto_0

    .line 115
    :cond_5
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 116
    return-void
.end method

.method protected saveBuildInfo()Ljava/lang/String;
    .locals 4

    .line 951
    const-string/jumbo v0, "ro.build.PDA"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 952
    .local v0, "pdaVer":Ljava/lang/String;
    const-string/jumbo v2, "ril.official_cscver"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 953
    .local v1, "cscVer":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 954
    .local v2, "currVer":Ljava/lang/String;
    return-object v2
.end method

.method protected setInitialSettings(Lcom/google/gson/JsonObject;Landroid/content/ContentValues;)V
    .locals 10
    .param p1, "mergedGlobalSettings"    # Lcom/google/gson/JsonObject;
    .param p2, "mnoinfo"    # Landroid/content/ContentValues;

    .line 487
    iget-object v0, p0, Lcom/sec/internal/ims/settings/GlobalSettingsRepoBase;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/sec/internal/ims/settings/GlobalSettingsRepoBase;->mPhoneId:I

    const/4 v2, -0x1

    invoke-static {v0, v2, v1}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->getVoiceCallType(Landroid/content/Context;II)I

    move-result v0

    const-string v1, ",INITIAL:"

    const/4 v3, 0x0

    const/4 v4, 0x1

    const-string v5, "] from global settings as initial"

    if-ne v0, v2, :cond_1

    .line 489
    nop

    .line 488
    const-string/jumbo v0, "volte_domestic_default_enabled"

    invoke-virtual {p1, v0}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    .line 489
    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsBoolean()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 490
    move v0, v3

    goto :goto_0

    :cond_0
    move v0, v4

    .line 491
    .local v0, "voiceCallType":I
    :goto_0
    iget-object v6, p0, Lcom/sec/internal/ims/settings/GlobalSettingsRepoBase;->mContext:Landroid/content/Context;

    iget v7, p0, Lcom/sec/internal/ims/settings/GlobalSettingsRepoBase;->mPhoneId:I

    invoke-static {v6, v0, v7}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->setVoiceCallType(Landroid/content/Context;II)V

    .line 492
    iget-object v6, p0, Lcom/sec/internal/ims/settings/GlobalSettingsRepoBase;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    iget v7, p0, Lcom/sec/internal/ims/settings/GlobalSettingsRepoBase;->mPhoneId:I

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Set voicecall_type to ["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILjava/lang/String;)V

    .line 493
    const v6, 0x10020003

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget v8, p0, Lcom/sec/internal/ims/settings/GlobalSettingsRepoBase;->mPhoneId:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 496
    .end local v0    # "voiceCallType":I
    :cond_1
    iget-object v0, p0, Lcom/sec/internal/ims/settings/GlobalSettingsRepoBase;->mContext:Landroid/content/Context;

    iget v6, p0, Lcom/sec/internal/ims/settings/GlobalSettingsRepoBase;->mPhoneId:I

    invoke-static {v0, v2, v6}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->getVideoCallType(Landroid/content/Context;II)I

    move-result v0

    if-ne v0, v2, :cond_3

    .line 497
    const-string/jumbo v0, "vt_default_enabled"

    invoke-virtual {p1, v0}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsBoolean()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 498
    goto :goto_1

    :cond_2
    move v3, v4

    :goto_1
    move v0, v3

    .line 499
    .local v0, "videoCallType":I
    iget-object v3, p0, Lcom/sec/internal/ims/settings/GlobalSettingsRepoBase;->mContext:Landroid/content/Context;

    iget v4, p0, Lcom/sec/internal/ims/settings/GlobalSettingsRepoBase;->mPhoneId:I

    invoke-static {v3, v0, v4}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->setVideoCallType(Landroid/content/Context;II)V

    .line 500
    iget-object v3, p0, Lcom/sec/internal/ims/settings/GlobalSettingsRepoBase;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    iget v4, p0, Lcom/sec/internal/ims/settings/GlobalSettingsRepoBase;->mPhoneId:I

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Set videocall_type to ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v4, v6}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILjava/lang/String;)V

    .line 501
    const v3, 0x10020004

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget v6, p0, Lcom/sec/internal/ims/settings/GlobalSettingsRepoBase;->mPhoneId:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 504
    .end local v0    # "videoCallType":I
    :cond_3
    iget-object v0, p0, Lcom/sec/internal/ims/settings/GlobalSettingsRepoBase;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/sec/internal/ims/settings/GlobalSettingsRepoBase;->mPhoneId:I

    invoke-static {v0, v2, v1}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->getRcsUserSetting(Landroid/content/Context;II)I

    move-result v0

    if-ne v0, v2, :cond_4

    .line 505
    const-string/jumbo v0, "rcs_default_enabled"

    invoke-virtual {p1, v0}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsInt()I

    move-result v0

    .line 506
    .local v0, "rcsUserSetting":I
    iget-object v1, p0, Lcom/sec/internal/ims/settings/GlobalSettingsRepoBase;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/sec/internal/ims/settings/GlobalSettingsRepoBase;->mPhoneId:I

    invoke-static {v1, v0, v2}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->setRcsUserSetting(Landroid/content/Context;II)V

    .line 507
    iget-object v1, p0, Lcom/sec/internal/ims/settings/GlobalSettingsRepoBase;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    iget v2, p0, Lcom/sec/internal/ims/settings/GlobalSettingsRepoBase;->mPhoneId:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Set rcs_user_setting to ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILjava/lang/String;)V

    .line 508
    const v1, 0x10020006

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lcom/sec/internal/ims/settings/GlobalSettingsRepoBase;->mPhoneId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",SET INITIAL RCS SETTING:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 510
    .end local v0    # "rcsUserSetting":I
    :cond_4
    return-void
.end method

.method protected setIsGcEnabledChange(Z)V
    .locals 4
    .param p1, "isGcEnabledChange"    # Z

    .line 653
    iget-object v0, p0, Lcom/sec/internal/ims/settings/GlobalSettingsRepoBase;->LOG_TAG:Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/ims/settings/GlobalSettingsRepoBase;->mPhoneId:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setIsGcEnabledChange: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 654
    iget v0, p0, Lcom/sec/internal/ims/settings/GlobalSettingsRepoBase;->mPhoneId:I

    iget-object v1, p0, Lcom/sec/internal/ims/settings/GlobalSettingsRepoBase;->mContext:Landroid/content/Context;

    const-string v2, "imsswitch"

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3, v3}, Lcom/sec/internal/helper/ImsSharedPrefHelper;->getSharedPref(ILandroid/content/Context;Ljava/lang/String;IZ)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 656
    .local v0, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 657
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "isGcEnabledChange"

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 658
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 659
    return-void
.end method

.method protected setPrevGcEnabled(Z)V
    .locals 4
    .param p1, "isGcEnabled"    # Z

    .line 637
    iget-object v0, p0, Lcom/sec/internal/ims/settings/GlobalSettingsRepoBase;->LOG_TAG:Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/ims/settings/GlobalSettingsRepoBase;->mPhoneId:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setPrevGcEnabled: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 638
    iget v0, p0, Lcom/sec/internal/ims/settings/GlobalSettingsRepoBase;->mPhoneId:I

    iget-object v1, p0, Lcom/sec/internal/ims/settings/GlobalSettingsRepoBase;->mContext:Landroid/content/Context;

    const-string v2, "imsswitch"

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3, v3}, Lcom/sec/internal/helper/ImsSharedPrefHelper;->getSharedPref(ILandroid/content/Context;Ljava/lang/String;IZ)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 640
    .local v0, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 641
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v2, "prevGcEnabled"

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 642
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 643
    return-void
.end method

.method protected setSettingsFromSp(ZIZIZI)V
    .locals 4
    .param p1, "isNeedToSetVoice"    # Z
    .param p2, "spValueVoice"    # I
    .param p3, "isNeedToSetVideo"    # Z
    .param p4, "spValueVideo"    # I
    .param p5, "isNeedToSetRcs"    # Z
    .param p6, "spValueRcs"    # I

    .line 778
    const-string v0, ",SET:"

    if-eqz p1, :cond_0

    .line 779
    iget-object v1, p0, Lcom/sec/internal/ims/settings/GlobalSettingsRepoBase;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/sec/internal/ims/settings/GlobalSettingsRepoBase;->mPhoneId:I

    invoke-static {v1, p2, v2}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->setVoiceCallType(Landroid/content/Context;II)V

    .line 780
    const/high16 v1, 0x10020000

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lcom/sec/internal/ims/settings/GlobalSettingsRepoBase;->mPhoneId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 783
    :cond_0
    if-eqz p3, :cond_1

    .line 784
    iget-object v1, p0, Lcom/sec/internal/ims/settings/GlobalSettingsRepoBase;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/sec/internal/ims/settings/GlobalSettingsRepoBase;->mPhoneId:I

    invoke-static {v1, p4, v2}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->setVideoCallType(Landroid/content/Context;II)V

    .line 785
    const v1, 0x10020001

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lcom/sec/internal/ims/settings/GlobalSettingsRepoBase;->mPhoneId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 788
    :cond_1
    if-eqz p5, :cond_2

    .line 789
    iget-object v0, p0, Lcom/sec/internal/ims/settings/GlobalSettingsRepoBase;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/sec/internal/ims/settings/GlobalSettingsRepoBase;->mPhoneId:I

    invoke-static {v0, p6, v1}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->setRcsUserSetting(Landroid/content/Context;II)V

    .line 790
    const v0, 0x10020005

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/sec/internal/ims/settings/GlobalSettingsRepoBase;->mPhoneId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",SET RCS DB:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 792
    :cond_2
    return-void
.end method

.method public unregisterIntentReceiver()V
    .locals 0

    .line 890
    return-void
.end method

.method public update(Landroid/content/ContentValues;)V
    .locals 2
    .param p1, "values"    # Landroid/content/ContentValues;

    .line 82
    iget-object v0, p0, Lcom/sec/internal/ims/settings/GlobalSettingsRepoBase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 83
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/settings/GlobalSettingsRepoBase;->save(Landroid/content/ContentValues;)V

    .line 84
    monitor-exit v0

    .line 85
    return-void

    .line 84
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public updateMno(Landroid/content/ContentValues;)Z
    .locals 34
    .param p1, "mnoinfo"    # Landroid/content/ContentValues;

    .line 529
    move-object/from16 v14, p0

    move-object/from16 v15, p1

    iget-object v1, v14, Lcom/sec/internal/ims/settings/GlobalSettingsRepoBase;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 531
    :try_start_0
    const-string v0, "hassim"

    const/4 v13, 0x0

    invoke-static {v15, v0, v13}, Lcom/sec/internal/helper/CollectionUtils;->getBooleanValue(Landroid/content/ContentValues;Ljava/lang/String;Z)Z

    move-result v0

    move v12, v0

    .line 532
    .local v12, "hasSIM":Z
    const-string v0, "mnoname"

    invoke-virtual {v15, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v10, v0

    .line 533
    .local v10, "newMnoname":Ljava/lang/String;
    const-string v0, "mvnoname"

    const-string v2, ""

    invoke-static {v15, v0, v2}, Lcom/sec/internal/helper/CollectionUtils;->getStringValue(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 534
    .local v11, "newMvnoname":Ljava/lang/String;
    const-string v0, "imsSwitchType"

    invoke-static {v15, v0, v13}, Lcom/sec/internal/helper/CollectionUtils;->getIntValue(Landroid/content/ContentValues;Ljava/lang/String;I)I

    move-result v0

    move v9, v0

    .line 535
    .local v9, "imsSwitchType":I
    const-string v0, "imsi"

    invoke-virtual {v15, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v8, v0

    .line 536
    .local v8, "curImsi":Ljava/lang/String;
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 538
    iget-object v0, v14, Lcom/sec/internal/ims/settings/GlobalSettingsRepoBase;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "simSlot["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v14, Lcom/sec/internal/ims/settings/GlobalSettingsRepoBase;->mPhoneId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] updateMno: hasSIM:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", imsSwitchType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 539
    invoke-virtual/range {p0 .. p1}, Lcom/sec/internal/ims/settings/GlobalSettingsRepoBase;->logMnoInfo(Landroid/content/ContentValues;)V

    .line 541
    invoke-virtual/range {p0 .. p0}, Lcom/sec/internal/ims/settings/GlobalSettingsRepoBase;->getPrevGcEnabled()Z

    move-result v7

    .line 542
    .local v7, "prevGcEnabled":Z
    const-string v0, "globalgcenabled"

    invoke-static {v15, v0, v13}, Lcom/sec/internal/helper/CollectionUtils;->getBooleanValue(Landroid/content/ContentValues;Ljava/lang/String;Z)Z

    move-result v6

    .line 543
    .local v6, "newGcEnabled":Z
    if-eq v7, v6, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v13

    :goto_0
    move v5, v1

    .line 544
    .local v5, "isGcEnabledChange":Z
    invoke-virtual {v14, v5}, Lcom/sec/internal/ims/settings/GlobalSettingsRepoBase;->setIsGcEnabledChange(Z)V

    .line 546
    if-eqz v5, :cond_1

    .line 547
    iget-object v1, v14, Lcom/sec/internal/ims/settings/GlobalSettingsRepoBase;->LOG_TAG:Ljava/lang/String;

    iget v2, v14, Lcom/sec/internal/ims/settings/GlobalSettingsRepoBase;->mPhoneId:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateMno: prevGcEnabled: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", newGcEnabled: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 548
    const/4 v2, 0x0

    const/4 v3, -0x1

    const/4 v4, 0x0

    const/16 v16, -0x1

    const/16 v17, 0x1

    invoke-virtual/range {p0 .. p0}, Lcom/sec/internal/ims/settings/GlobalSettingsRepoBase;->readRcsDefaultEnabled()I

    move-result v18

    move-object/from16 v1, p0

    move/from16 v19, v5

    .end local v5    # "isGcEnabledChange":Z
    .local v19, "isGcEnabledChange":Z
    move/from16 v5, v16

    move v13, v6

    .end local v6    # "newGcEnabled":Z
    .local v13, "newGcEnabled":Z
    move/from16 v6, v17

    move/from16 v17, v7

    .end local v7    # "prevGcEnabled":Z
    .local v17, "prevGcEnabled":Z
    move/from16 v7, v18

    invoke-virtual/range {v1 .. v7}, Lcom/sec/internal/ims/settings/GlobalSettingsRepoBase;->setSettingsFromSp(ZIZIZI)V

    goto :goto_1

    .line 546
    .end local v13    # "newGcEnabled":Z
    .end local v17    # "prevGcEnabled":Z
    .end local v19    # "isGcEnabledChange":Z
    .restart local v5    # "isGcEnabledChange":Z
    .restart local v6    # "newGcEnabled":Z
    .restart local v7    # "prevGcEnabled":Z
    :cond_1
    move/from16 v19, v5

    move v13, v6

    move/from16 v17, v7

    .line 550
    .end local v5    # "isGcEnabledChange":Z
    .end local v6    # "newGcEnabled":Z
    .end local v7    # "prevGcEnabled":Z
    .restart local v13    # "newGcEnabled":Z
    .restart local v17    # "prevGcEnabled":Z
    .restart local v19    # "isGcEnabledChange":Z
    :goto_1
    invoke-virtual {v14, v13}, Lcom/sec/internal/ims/settings/GlobalSettingsRepoBase;->setPrevGcEnabled(Z)V

    .line 552
    invoke-static {v10}, Lcom/sec/internal/constants/Mno;->fromName(Ljava/lang/String;)Lcom/sec/internal/constants/Mno;

    move-result-object v18

    .line 554
    .local v18, "mno":Lcom/sec/internal/constants/Mno;
    iget v1, v14, Lcom/sec/internal/ims/settings/GlobalSettingsRepoBase;->mPhoneId:I

    iget-object v2, v14, Lcom/sec/internal/ims/settings/GlobalSettingsRepoBase;->mContext:Landroid/content/Context;

    const-string v3, "globalsettings"

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4, v4}, Lcom/sec/internal/helper/ImsSharedPrefHelper;->getSharedPref(ILandroid/content/Context;Ljava/lang/String;IZ)Landroid/content/SharedPreferences;

    move-result-object v7

    .line 557
    .local v7, "sp":Landroid/content/SharedPreferences;
    invoke-virtual {v14, v7}, Lcom/sec/internal/ims/settings/GlobalSettingsRepoBase;->getPreviousImsi(Landroid/content/SharedPreferences;)Ljava/lang/String;

    move-result-object v6

    .line 558
    .local v6, "prevImsi":Ljava/lang/String;
    iget-object v1, v14, Lcom/sec/internal/ims/settings/GlobalSettingsRepoBase;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->RCS_USER_SETTING1:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;->getName()Ljava/lang/String;

    move-result-object v2

    iget v3, v14, Lcom/sec/internal/ims/settings/GlobalSettingsRepoBase;->mPhoneId:I

    invoke-static {v1, v2, v3}, Lcom/sec/internal/helper/DmConfigHelper;->getImsUserSetting(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v5

    .line 559
    .local v5, "spValueRcs":I
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {v8, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, 0x1

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    move/from16 v20, v1

    .line 561
    .local v20, "imsiChanged":Z
    iput-object v15, v14, Lcom/sec/internal/ims/settings/GlobalSettingsRepoBase;->mMnoinfo:Landroid/content/ContentValues;

    .line 562
    invoke-virtual/range {p0 .. p0}, Lcom/sec/internal/ims/settings/GlobalSettingsRepoBase;->readRcsDefaultEnabled()I

    move-result v4

    .line 563
    .local v4, "prevRcsDefaultEnabled":I
    invoke-virtual/range {p0 .. p1}, Lcom/sec/internal/ims/settings/GlobalSettingsRepoBase;->updateRequires(Landroid/content/ContentValues;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 564
    iget-object v0, v14, Lcom/sec/internal/ims/settings/GlobalSettingsRepoBase;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "simSlot["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v14, Lcom/sec/internal/ims/settings/GlobalSettingsRepoBase;->mPhoneId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] updateMno: update not requires"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 566
    invoke-virtual {v14, v5, v4}, Lcom/sec/internal/ims/settings/GlobalSettingsRepoBase;->initRcsUserSetting(II)V

    .line 568
    if-eqz v20, :cond_3

    .line 569
    invoke-interface {v7}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 570
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "imsi"

    invoke-interface {v0, v1, v8}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 571
    iget-object v1, v14, Lcom/sec/internal/ims/settings/GlobalSettingsRepoBase;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "simSlot["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v14, Lcom/sec/internal/ims/settings/GlobalSettingsRepoBase;->mPhoneId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "] imsi changed:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v6}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " --> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v8}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 572
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 574
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_3
    const/4 v0, 0x0

    return v0

    .line 577
    :cond_4
    iget-object v1, v14, Lcom/sec/internal/ims/settings/GlobalSettingsRepoBase;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "simSlot["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v14, Lcom/sec/internal/ims/settings/GlobalSettingsRepoBase;->mPhoneId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "] updateMno: update requires"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 579
    invoke-virtual {v14, v7}, Lcom/sec/internal/ims/settings/GlobalSettingsRepoBase;->getPreviousMno(Landroid/content/SharedPreferences;)Ljava/lang/String;

    move-result-object v3

    .line 580
    .local v3, "prevMnoname":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/sec/internal/ims/settings/GlobalSettingsRepoBase;->readVolteDefaultEnabled()I

    move-result v2

    .line 581
    .local v2, "prevVolteDefaultEnabled":I
    const-string v1, "globalgcenabled"

    const/4 v0, 0x0

    invoke-interface {v7, v1, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 584
    .local v1, "prevGlobalGcEnabled":Z
    invoke-virtual/range {p0 .. p0}, Lcom/sec/internal/ims/settings/GlobalSettingsRepoBase;->reset()V

    .line 585
    invoke-interface {v7}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v15

    .line 586
    .local v15, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v0, "globalgcenabled"

    invoke-interface {v15, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 587
    invoke-interface {v15}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 589
    iget-object v0, v14, Lcom/sec/internal/ims/settings/GlobalSettingsRepoBase;->LOG_TAG:Ljava/lang/String;

    move/from16 v21, v1

    .end local v1    # "prevGlobalGcEnabled":Z
    .local v21, "prevGlobalGcEnabled":Z
    iget v1, v14, Lcom/sec/internal/ims/settings/GlobalSettingsRepoBase;->mPhoneId:I

    move/from16 v22, v2

    .end local v2    # "prevVolteDefaultEnabled":I
    .local v22, "prevVolteDefaultEnabled":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v23, v4

    .end local v4    # "prevRcsDefaultEnabled":I
    .local v23, "prevRcsDefaultEnabled":I
    const-string/jumbo v4, "updateMno: ["

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "] => ["

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "]"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    .line 591
    iget-object v0, v14, Lcom/sec/internal/ims/settings/GlobalSettingsRepoBase;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->VOLTE_SLOT1:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;->getName()Ljava/lang/String;

    move-result-object v1

    iget v2, v14, Lcom/sec/internal/ims/settings/GlobalSettingsRepoBase;->mPhoneId:I

    invoke-static {v0, v1, v2}, Lcom/sec/internal/helper/DmConfigHelper;->getImsUserSetting(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v24

    .line 592
    .local v24, "spValueVolte":I
    iget-object v0, v14, Lcom/sec/internal/ims/settings/GlobalSettingsRepoBase;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->VILTE_SLOT1:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;->getName()Ljava/lang/String;

    move-result-object v1

    iget v2, v14, Lcom/sec/internal/ims/settings/GlobalSettingsRepoBase;->mPhoneId:I

    invoke-static {v0, v1, v2}, Lcom/sec/internal/helper/DmConfigHelper;->getImsUserSetting(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v25

    .line 594
    .local v25, "spValueVideo":I
    move-object/from16 v1, p0

    move/from16 v4, v22

    .end local v22    # "prevVolteDefaultEnabled":I
    .local v4, "prevVolteDefaultEnabled":I
    move-object/from16 v2, v18

    move-object/from16 v22, v3

    .end local v3    # "prevMnoname":Ljava/lang/String;
    .local v22, "prevMnoname":Ljava/lang/String;
    move-object/from16 v3, p1

    move/from16 v27, v4

    move-object/from16 v26, v15

    move/from16 v15, v23

    .end local v4    # "prevVolteDefaultEnabled":I
    .end local v23    # "prevRcsDefaultEnabled":I
    .local v15, "prevRcsDefaultEnabled":I
    .local v26, "editor":Landroid/content/SharedPreferences$Editor;
    .local v27, "prevVolteDefaultEnabled":I
    move-object v4, v10

    move/from16 v28, v5

    .end local v5    # "spValueRcs":I
    .local v28, "spValueRcs":I
    move-object/from16 v5, v22

    move-object/from16 v23, v6

    .end local v6    # "prevImsi":Ljava/lang/String;
    .local v23, "prevImsi":Ljava/lang/String;
    move/from16 v6, v24

    move-object/from16 v29, v7

    .end local v7    # "sp":Landroid/content/SharedPreferences;
    .local v29, "sp":Landroid/content/SharedPreferences;
    move/from16 v7, v25

    invoke-virtual/range {v1 .. v7}, Lcom/sec/internal/ims/settings/GlobalSettingsRepoBase;->updateSystemSettings(Lcom/sec/internal/constants/Mno;Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;II)V

    .line 596
    const-string v0, "Bell_CA"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "Telus_CA"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "Koodo_CA"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_3

    :cond_5
    const/4 v2, 0x0

    goto :goto_4

    .line 597
    :cond_6
    :goto_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_CONF_UPDATE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 598
    .local v0, "oneTimeResetSp":Ljava/lang/String;
    iget-object v1, v14, Lcom/sec/internal/ims/settings/GlobalSettingsRepoBase;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 599
    .local v1, "sp1":Landroid/content/SharedPreferences;
    invoke-interface {v1, v10, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 600
    .local v3, "isConfUpdate":Z
    if-nez v3, :cond_7

    .line 601
    iget-object v4, v14, Lcom/sec/internal/ims/settings/GlobalSettingsRepoBase;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ": volte_domestic_default_enabled - force Reset "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 602
    iget-object v4, v14, Lcom/sec/internal/ims/settings/GlobalSettingsRepoBase;->mContext:Landroid/content/Context;

    const/4 v5, -0x1

    iget v6, v14, Lcom/sec/internal/ims/settings/GlobalSettingsRepoBase;->mPhoneId:I

    invoke-static {v4, v5, v6}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->setVoiceCallType(Landroid/content/Context;II)V

    .line 603
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    .line 604
    .local v4, "editor1":Landroid/content/SharedPreferences$Editor;
    const/4 v5, 0x1

    invoke-interface {v4, v10, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 605
    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 609
    .end local v0    # "oneTimeResetSp":Ljava/lang/String;
    .end local v1    # "sp1":Landroid/content/SharedPreferences;
    .end local v3    # "isConfUpdate":Z
    .end local v4    # "editor1":Landroid/content/SharedPreferences$Editor;
    :cond_7
    :goto_4
    iget-object v3, v14, Lcom/sec/internal/ims/settings/GlobalSettingsRepoBase;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 611
    move-object/from16 v16, v8

    .end local v8    # "curImsi":Ljava/lang/String;
    .local v16, "curImsi":Ljava/lang/String;
    move-object/from16 v8, p0

    move/from16 v30, v9

    .end local v9    # "imsSwitchType":I
    .local v30, "imsSwitchType":I
    move v9, v12

    move-object/from16 v31, v10

    .end local v10    # "newMnoname":Ljava/lang/String;
    .local v31, "newMnoname":Ljava/lang/String;
    move/from16 v32, v12

    .end local v12    # "hasSIM":Z
    .local v32, "hasSIM":Z
    move/from16 v12, v30

    move v0, v2

    move/from16 v33, v13

    .end local v13    # "newGcEnabled":Z
    .local v33, "newGcEnabled":Z
    move-object/from16 v13, p1

    :try_start_1
    invoke-virtual/range {v8 .. v13}, Lcom/sec/internal/ims/settings/GlobalSettingsRepoBase;->loadGlobalSettingsFromJson(ZLjava/lang/String;Ljava/lang/String;ILandroid/content/ContentValues;)V

    .line 612
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 614
    invoke-virtual/range {p0 .. p0}, Lcom/sec/internal/ims/settings/GlobalSettingsRepoBase;->readRcsDefaultEnabled()I

    move-result v8

    .line 615
    .local v8, "newRcsDefaultEnabled":I
    invoke-virtual/range {p0 .. p0}, Lcom/sec/internal/ims/settings/GlobalSettingsRepoBase;->readVolteDefaultEnabled()I

    move-result v9

    .line 617
    .local v9, "newVolteDefaultEnabled":I
    iget-boolean v1, v14, Lcom/sec/internal/ims/settings/GlobalSettingsRepoBase;->mVersionUpdated:Z

    if-eqz v1, :cond_b

    .line 618
    if-eq v15, v8, :cond_8

    .line 619
    iget-object v1, v14, Lcom/sec/internal/ims/settings/GlobalSettingsRepoBase;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateMno : rcs_default_enabled: ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "] => ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 620
    const/4 v2, 0x0

    const/4 v3, -0x1

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v6, 0x1

    move-object/from16 v1, p0

    move v7, v8

    invoke-virtual/range {v1 .. v7}, Lcom/sec/internal/ims/settings/GlobalSettingsRepoBase;->setSettingsFromSp(ZIZIZI)V

    .line 622
    :cond_8
    move/from16 v10, v27

    .end local v27    # "prevVolteDefaultEnabled":I
    .local v10, "prevVolteDefaultEnabled":I
    invoke-virtual {v14, v10, v9}, Lcom/sec/internal/ims/settings/GlobalSettingsRepoBase;->needResetVolteAsDefault(II)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 624
    iget-object v1, v14, Lcom/sec/internal/ims/settings/GlobalSettingsRepoBase;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateMno : volte_domestic_default_enabled: ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "] => ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 626
    const/4 v2, 0x1

    const/4 v1, 0x1

    if-ne v9, v1, :cond_9

    move v3, v0

    goto :goto_5

    :cond_9
    const/4 v3, 0x1

    :goto_5
    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v6, 0x0

    const/4 v7, -0x1

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v7}, Lcom/sec/internal/ims/settings/GlobalSettingsRepoBase;->setSettingsFromSp(ZIZIZI)V

    .line 628
    :cond_a
    iput-boolean v0, v14, Lcom/sec/internal/ims/settings/GlobalSettingsRepoBase;->mVersionUpdated:Z

    move/from16 v2, v28

    goto :goto_6

    .line 630
    .end local v10    # "prevVolteDefaultEnabled":I
    .restart local v27    # "prevVolteDefaultEnabled":I
    :cond_b
    move/from16 v10, v27

    .end local v27    # "prevVolteDefaultEnabled":I
    .restart local v10    # "prevVolteDefaultEnabled":I
    move/from16 v2, v28

    .end local v28    # "spValueRcs":I
    .local v2, "spValueRcs":I
    invoke-virtual {v14, v2, v8}, Lcom/sec/internal/ims/settings/GlobalSettingsRepoBase;->initRcsUserSetting(II)V

    .line 633
    :goto_6
    const/4 v0, 0x1

    return v0

    .line 612
    .end local v2    # "spValueRcs":I
    .end local v8    # "newRcsDefaultEnabled":I
    .end local v9    # "newVolteDefaultEnabled":I
    .end local v10    # "prevVolteDefaultEnabled":I
    .restart local v27    # "prevVolteDefaultEnabled":I
    .restart local v28    # "spValueRcs":I
    :catchall_0
    move-exception v0

    move/from16 v10, v27

    move/from16 v2, v28

    .end local v27    # "prevVolteDefaultEnabled":I
    .end local v28    # "spValueRcs":I
    .restart local v2    # "spValueRcs":I
    .restart local v10    # "prevVolteDefaultEnabled":I
    :goto_7
    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_7

    .line 536
    .end local v2    # "spValueRcs":I
    .end local v10    # "prevVolteDefaultEnabled":I
    .end local v11    # "newMvnoname":Ljava/lang/String;
    .end local v15    # "prevRcsDefaultEnabled":I
    .end local v16    # "curImsi":Ljava/lang/String;
    .end local v17    # "prevGcEnabled":Z
    .end local v18    # "mno":Lcom/sec/internal/constants/Mno;
    .end local v19    # "isGcEnabledChange":Z
    .end local v20    # "imsiChanged":Z
    .end local v21    # "prevGlobalGcEnabled":Z
    .end local v22    # "prevMnoname":Ljava/lang/String;
    .end local v23    # "prevImsi":Ljava/lang/String;
    .end local v24    # "spValueVolte":I
    .end local v25    # "spValueVideo":I
    .end local v26    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v29    # "sp":Landroid/content/SharedPreferences;
    .end local v30    # "imsSwitchType":I
    .end local v31    # "newMnoname":Ljava/lang/String;
    .end local v32    # "hasSIM":Z
    .end local v33    # "newGcEnabled":Z
    :catchall_2
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw v0
.end method

.method protected updateRequires(Landroid/content/ContentValues;)Z
    .locals 11
    .param p1, "mnoinfo"    # Landroid/content/ContentValues;

    .line 801
    iget-object v0, p0, Lcom/sec/internal/ims/settings/GlobalSettingsRepoBase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 803
    :try_start_0
    const-string v1, "hassim"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    .line 804
    .local v1, "hasSim":Ljava/lang/Boolean;
    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 805
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    move-object v1, v3

    .line 807
    :cond_0
    const-string v3, "mnoname"

    invoke-virtual {p1, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 808
    .local v3, "newMnoname":Ljava/lang/String;
    const-string v4, "mvnoname"

    invoke-virtual {p1, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 809
    .local v4, "newMvnoname":Ljava/lang/String;
    const-string v5, "NetworkName"

    invoke-virtual {p1, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 810
    .local v5, "newNwName":Ljava/lang/String;
    if-nez v5, :cond_1

    .line 811
    const-string v6, ""

    move-object v5, v6

    .line 813
    :cond_1
    const-string v6, "imsSwitchType"

    invoke-virtual {p1, v6}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    .line 814
    .local v6, "imsSwitchType":Ljava/lang/Integer;
    if-nez v6, :cond_2

    .line 815
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    move-object v6, v7

    .line 817
    :cond_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 819
    iget v0, p0, Lcom/sec/internal/ims/settings/GlobalSettingsRepoBase;->mPhoneId:I

    iget-object v7, p0, Lcom/sec/internal/ims/settings/GlobalSettingsRepoBase;->mContext:Landroid/content/Context;

    const-string v8, "globalsettings"

    invoke-static {v0, v7, v8, v2, v2}, Lcom/sec/internal/helper/ImsSharedPrefHelper;->getSharedPref(ILandroid/content/Context;Ljava/lang/String;IZ)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 822
    .local v0, "sp":Landroid/content/SharedPreferences;
    invoke-virtual {p0}, Lcom/sec/internal/ims/settings/GlobalSettingsRepoBase;->isVersionUpdated()Z

    move-result v7

    const/4 v8, 0x1

    if-eqz v7, :cond_3

    .line 823
    iget-object v2, p0, Lcom/sec/internal/ims/settings/GlobalSettingsRepoBase;->LOG_TAG:Ljava/lang/String;

    const-string v7, "PDA or CSC version changed"

    invoke-static {v2, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 824
    iput-boolean v8, p0, Lcom/sec/internal/ims/settings/GlobalSettingsRepoBase;->mVersionUpdated:Z

    .line 825
    return v8

    .line 828
    :cond_3
    iget-object v7, p0, Lcom/sec/internal/ims/settings/GlobalSettingsRepoBase;->mContext:Landroid/content/Context;

    iget v9, p0, Lcom/sec/internal/ims/settings/GlobalSettingsRepoBase;->mPhoneId:I

    invoke-static {v7, v9}, Lcom/sec/internal/ims/util/CscParser;->isCscChanged(Landroid/content/Context;I)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 829
    iget-object v2, p0, Lcom/sec/internal/ims/settings/GlobalSettingsRepoBase;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    const-string/jumbo v7, "update Requires: CSC Info Changed"

    invoke-virtual {v2, v7}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 830
    iput-boolean v8, p0, Lcom/sec/internal/ims/settings/GlobalSettingsRepoBase;->mCscChanged:Z

    .line 831
    return v8

    .line 834
    :cond_4
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/settings/GlobalSettingsRepoBase;->getPreviousNwCode(Landroid/content/SharedPreferences;)Ljava/lang/String;

    move-result-object v7

    iget v9, p0, Lcom/sec/internal/ims/settings/GlobalSettingsRepoBase;->mPhoneId:I

    invoke-static {v9}, Lcom/sec/internal/helper/OmcCode;->getNWCode(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5

    .line 835
    iget-object v2, p0, Lcom/sec/internal/ims/settings/GlobalSettingsRepoBase;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v7, "update Requires: different omc_nw code"

    invoke-static {v2, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 836
    return v8

    .line 839
    :cond_5
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/settings/GlobalSettingsRepoBase;->getPreviousMno(Landroid/content/SharedPreferences;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_6

    .line 840
    iget-object v2, p0, Lcom/sec/internal/ims/settings/GlobalSettingsRepoBase;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v7, "update Requires: different mnoname"

    invoke-static {v2, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 841
    return v8

    .line 842
    :cond_6
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/settings/GlobalSettingsRepoBase;->getPreviousMvno(Landroid/content/SharedPreferences;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_7

    .line 843
    iget-object v2, p0, Lcom/sec/internal/ims/settings/GlobalSettingsRepoBase;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v7, "update Requires: different MVNO name"

    invoke-static {v2, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 844
    return v8

    .line 847
    :cond_7
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/settings/GlobalSettingsRepoBase;->getPreviousNwName(Landroid/content/SharedPreferences;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_8

    .line 848
    iget-object v2, p0, Lcom/sec/internal/ims/settings/GlobalSettingsRepoBase;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v7, "update Requires: different network name"

    invoke-static {v2, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 849
    return v8

    .line 852
    :cond_8
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/settings/GlobalSettingsRepoBase;->getPreviousHasSim(Landroid/content/SharedPreferences;)Z

    move-result v7

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-eq v7, v9, :cond_9

    .line 853
    iget-object v2, p0, Lcom/sec/internal/ims/settings/GlobalSettingsRepoBase;->LOG_TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "update Requires: hasSim Changed "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 854
    return v8

    .line 857
    :cond_9
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/settings/GlobalSettingsRepoBase;->getPreviousCscImsSettingType(Landroid/content/SharedPreferences;)I

    move-result v7

    .line 858
    .local v7, "prevCscImsSetting":I
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v9

    if-eq v7, v9, :cond_a

    .line 859
    iget-object v2, p0, Lcom/sec/internal/ims/settings/GlobalSettingsRepoBase;->LOG_TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "update Requires: cscImsSettingType changed "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " => "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v2, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 861
    return v8

    .line 864
    :cond_a
    iget-object v9, p0, Lcom/sec/internal/ims/settings/GlobalSettingsRepoBase;->mAutoUpdate:Lcom/sec/internal/ims/settings/ImsAutoUpdate;

    if-eqz v9, :cond_b

    invoke-virtual {v9}, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->isUpdateNeeded()Z

    move-result v9

    if-eqz v9, :cond_b

    .line 865
    iget-object v2, p0, Lcom/sec/internal/ims/settings/GlobalSettingsRepoBase;->LOG_TAG:Ljava/lang/String;

    const-string v9, "imsupdate changed."

    invoke-static {v2, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 866
    return v8

    .line 869
    :cond_b
    iget-object v8, p0, Lcom/sec/internal/ims/settings/GlobalSettingsRepoBase;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v9, "update not requires: same mno, same version"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 870
    return v2

    .line 817
    .end local v0    # "sp":Landroid/content/SharedPreferences;
    .end local v1    # "hasSim":Ljava/lang/Boolean;
    .end local v3    # "newMnoname":Ljava/lang/String;
    .end local v4    # "newMvnoname":Ljava/lang/String;
    .end local v5    # "newNwName":Ljava/lang/String;
    .end local v6    # "imsSwitchType":Ljava/lang/Integer;
    .end local v7    # "prevCscImsSetting":I
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method protected updateSystemSettings(Lcom/sec/internal/constants/Mno;Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 8
    .param p1, "mno"    # Lcom/sec/internal/constants/Mno;
    .param p2, "mnoinfo"    # Landroid/content/ContentValues;
    .param p3, "newMnoname"    # Ljava/lang/String;
    .param p4, "prevMnoname"    # Ljava/lang/String;
    .param p5, "spValueVolte"    # I
    .param p6, "spValueVideo"    # I

    .line 682
    invoke-virtual {p1}, Lcom/sec/internal/constants/Mno;->isKor()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 686
    invoke-static {p3, p4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 687
    const/4 p5, -0x1

    .line 691
    :cond_0
    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/settings/GlobalSettingsRepoBase;->isNeedToBeSetVoLTE(Landroid/content/ContentValues;)Z

    move-result v0

    .line 693
    .local v0, "isNeedToSetVoLTE":Z
    invoke-virtual {p0}, Lcom/sec/internal/ims/settings/GlobalSettingsRepoBase;->removeVolteMenuByCsc()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 694
    iget-object v1, p0, Lcom/sec/internal/ims/settings/GlobalSettingsRepoBase;->LOG_TAG:Ljava/lang/String;

    iget v2, p0, Lcom/sec/internal/ims/settings/GlobalSettingsRepoBase;->mPhoneId:I

    const-string/jumbo v3, "reset voice and vt call settings db because of VOICECLLCSC CONFIGOPSTYLEMOBILENETWORKSETTINGMENU Feature"

    invoke-static {v1, v2, v3}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    .line 696
    const/4 v0, 0x1

    .line 697
    const/4 p5, -0x1

    .line 700
    :cond_1
    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/settings/GlobalSettingsRepoBase;->isNeedToBeSetViLTE(Landroid/content/ContentValues;)Z

    move-result v4

    const/4 v6, 0x0

    const/4 v7, -0x1

    move-object v1, p0

    move v2, v0

    move v3, p5

    move v5, p6

    invoke-virtual/range {v1 .. v7}, Lcom/sec/internal/ims/settings/GlobalSettingsRepoBase;->setSettingsFromSp(ZIZIZI)V

    .line 701
    return-void
.end method
