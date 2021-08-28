.class public Lcom/sec/internal/ims/settings/GlobalSettingsRepo;
.super Ljava/util/Observable;
.source "GlobalSettingsRepo.java"


# static fields
.field protected static final SP_KEY_BUILDINFO:Ljava/lang/String; = "buildinfo"

.field protected static final SP_KEY_CSC_IMSSETTING_TYPE:Ljava/lang/String; = "cscimssettingtype"

.field protected static final SP_KEY_GCFMODE:Ljava/lang/String; = "gcfmode"

.field protected static final SP_KEY_GLOBAL_GC_ENABLED:Ljava/lang/String; = "globalgcenabled"

.field protected static final SP_KEY_HAS_SIM:Ljava/lang/String; = "hassim"

.field protected static final SP_KEY_IMSI:Ljava/lang/String; = "imsi"

.field protected static final SP_KEY_LOADED:Ljava/lang/String; = "loaded"

.field protected static final SP_KEY_MNONAME:Ljava/lang/String; = "mnoname"

.field protected static final SP_KEY_MVNONAME:Ljava/lang/String; = "mvnoname"

.field protected static final SP_KEY_NWCODE:Ljava/lang/String; = "nwcode"

.field protected static final SP_KEY_NWNAME:Ljava/lang/String; = "NetworkName"


# instance fields
.field protected mContext:Landroid/content/Context;

.field protected final mLock:Ljava/lang/Object;

.field protected mMnoinfo:Landroid/content/ContentValues;

.field protected mPhoneId:I

.field public sInstance:Lcom/sec/internal/ims/settings/GlobalSettingsRepo;


# direct methods
.method protected constructor <init>()V
    .locals 1

    .line 54
    invoke-direct {p0}, Ljava/util/Observable;-><init>()V

    .line 44
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/internal/ims/settings/GlobalSettingsRepo;->mPhoneId:I

    .line 48
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/settings/GlobalSettingsRepo;->mLock:Ljava/lang/Object;

    .line 50
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/internal/ims/settings/GlobalSettingsRepo;->mMnoinfo:Landroid/content/ContentValues;

    .line 52
    iput-object v0, p0, Lcom/sec/internal/ims/settings/GlobalSettingsRepo;->sInstance:Lcom/sec/internal/ims/settings/GlobalSettingsRepo;

    .line 56
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "phoneId"    # I

    .line 58
    invoke-direct {p0}, Ljava/util/Observable;-><init>()V

    .line 44
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/internal/ims/settings/GlobalSettingsRepo;->mPhoneId:I

    .line 48
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/settings/GlobalSettingsRepo;->mLock:Ljava/lang/Object;

    .line 50
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/internal/ims/settings/GlobalSettingsRepo;->mMnoinfo:Landroid/content/ContentValues;

    .line 52
    iput-object v0, p0, Lcom/sec/internal/ims/settings/GlobalSettingsRepo;->sInstance:Lcom/sec/internal/ims/settings/GlobalSettingsRepo;

    .line 59
    iput-object p1, p0, Lcom/sec/internal/ims/settings/GlobalSettingsRepo;->mContext:Landroid/content/Context;

    .line 60
    iput p2, p0, Lcom/sec/internal/ims/settings/GlobalSettingsRepo;->mPhoneId:I

    .line 61
    invoke-static {p2}, Lcom/sec/internal/helper/SimUtil;->getMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/sec/internal/ims/settings/GlobalSettingsRepo;->makeInstance(Lcom/sec/internal/constants/Mno;I)V

    .line 62
    return-void
.end method

.method private makeInstance(Lcom/sec/internal/constants/Mno;I)V
    .locals 2
    .param p1, "mno"    # Lcom/sec/internal/constants/Mno;
    .param p2, "phoneId"    # I

    .line 65
    invoke-virtual {p0}, Lcom/sec/internal/ims/settings/GlobalSettingsRepo;->unregisterIntentReceiver()V

    .line 66
    invoke-virtual {p1}, Lcom/sec/internal/constants/Mno;->isKor()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lcom/sec/internal/constants/Mno;->isChn()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lcom/sec/internal/constants/Mno;->isHkMo()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lcom/sec/internal/constants/Mno;->isTw()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 68
    :cond_0
    invoke-virtual {p1}, Lcom/sec/internal/constants/Mno;->isUSA()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 69
    new-instance v0, Lcom/sec/internal/ims/settings/GlobalSettingsRepoUsa;

    iget-object v1, p0, Lcom/sec/internal/ims/settings/GlobalSettingsRepo;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p2}, Lcom/sec/internal/ims/settings/GlobalSettingsRepoUsa;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/sec/internal/ims/settings/GlobalSettingsRepo;->sInstance:Lcom/sec/internal/ims/settings/GlobalSettingsRepo;

    goto :goto_1

    .line 71
    :cond_1
    new-instance v0, Lcom/sec/internal/ims/settings/GlobalSettingsRepoBase;

    iget-object v1, p0, Lcom/sec/internal/ims/settings/GlobalSettingsRepo;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p2}, Lcom/sec/internal/ims/settings/GlobalSettingsRepoBase;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/sec/internal/ims/settings/GlobalSettingsRepo;->sInstance:Lcom/sec/internal/ims/settings/GlobalSettingsRepo;

    goto :goto_1

    .line 67
    :cond_2
    :goto_0
    new-instance v0, Lcom/sec/internal/ims/settings/GlobalSettingsRepoKorChnx;

    iget-object v1, p0, Lcom/sec/internal/ims/settings/GlobalSettingsRepo;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p2}, Lcom/sec/internal/ims/settings/GlobalSettingsRepoKorChnx;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/sec/internal/ims/settings/GlobalSettingsRepo;->sInstance:Lcom/sec/internal/ims/settings/GlobalSettingsRepo;

    .line 73
    :goto_1
    return-void
.end method


# virtual methods
.method public dump()V
    .locals 1

    .line 177
    iget-object v0, p0, Lcom/sec/internal/ims/settings/GlobalSettingsRepo;->sInstance:Lcom/sec/internal/ims/settings/GlobalSettingsRepo;

    invoke-virtual {v0}, Lcom/sec/internal/ims/settings/GlobalSettingsRepo;->dump()V

    .line 178
    return-void
.end method

.method public getGlobalGcEnabled()Z
    .locals 1

    .line 139
    iget-object v0, p0, Lcom/sec/internal/ims/settings/GlobalSettingsRepo;->sInstance:Lcom/sec/internal/ims/settings/GlobalSettingsRepo;

    invoke-virtual {v0}, Lcom/sec/internal/ims/settings/GlobalSettingsRepo;->getGlobalGcEnabled()Z

    move-result v0

    return v0
.end method

.method public getPreviousMno()Ljava/lang/String;
    .locals 1

    .line 135
    iget-object v0, p0, Lcom/sec/internal/ims/settings/GlobalSettingsRepo;->sInstance:Lcom/sec/internal/ims/settings/GlobalSettingsRepo;

    invoke-virtual {v0}, Lcom/sec/internal/ims/settings/GlobalSettingsRepo;->getPreviousMno()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isNeedToBeSetViLTE(Landroid/content/ContentValues;)Z
    .locals 1
    .param p1, "mnoinfo"    # Landroid/content/ContentValues;

    .line 169
    iget-object v0, p0, Lcom/sec/internal/ims/settings/GlobalSettingsRepo;->sInstance:Lcom/sec/internal/ims/settings/GlobalSettingsRepo;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/settings/GlobalSettingsRepo;->isNeedToBeSetViLTE(Landroid/content/ContentValues;)Z

    move-result v0

    return v0
.end method

.method public isNeedToBeSetVoLTE(Landroid/content/ContentValues;)Z
    .locals 1
    .param p1, "mnoinfo"    # Landroid/content/ContentValues;

    .line 173
    iget-object v0, p0, Lcom/sec/internal/ims/settings/GlobalSettingsRepo;->sInstance:Lcom/sec/internal/ims/settings/GlobalSettingsRepo;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/settings/GlobalSettingsRepo;->isNeedToBeSetVoLTE(Landroid/content/ContentValues;)Z

    move-result v0

    return v0
.end method

.method public load()V
    .locals 1

    .line 151
    iget-object v0, p0, Lcom/sec/internal/ims/settings/GlobalSettingsRepo;->sInstance:Lcom/sec/internal/ims/settings/GlobalSettingsRepo;

    invoke-virtual {v0}, Lcom/sec/internal/ims/settings/GlobalSettingsRepo;->load()V

    .line 152
    return-void
.end method

.method public loadByDynamicConfig()V
    .locals 1

    .line 155
    iget-object v0, p0, Lcom/sec/internal/ims/settings/GlobalSettingsRepo;->sInstance:Lcom/sec/internal/ims/settings/GlobalSettingsRepo;

    invoke-virtual {v0}, Lcom/sec/internal/ims/settings/GlobalSettingsRepo;->loadByDynamicConfig()V

    .line 156
    return-void
.end method

.method protected loadGlobalGcSettings(Z)V
    .locals 0
    .param p1, "isGlobalGcEnabled"    # Z

    .line 109
    return-void
.end method

.method protected needResetCallSettingBySim(I)Z
    .locals 4
    .param p1, "phoneId"    # I

    .line 112
    invoke-static {}, Lcom/sec/internal/helper/os/ImsCscFeature;->getInstance()Lcom/sec/internal/helper/os/ImsCscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Common_AutoConfigurationType"

    invoke-virtual {v0, p1, v1}, Lcom/sec/internal/helper/os/ImsCscFeature;->getString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 113
    invoke-virtual {v0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 114
    .local v0, "autoconfigType":Ljava/lang/String;
    const-string v1, "SIMBASED_OMC"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_3

    const-string v1, "SIMBASED_SSKU"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 118
    :cond_0
    const-string/jumbo v1, "ro.simbased.changetype"

    const-string v3, ""

    invoke-static {v1, v3}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 119
    .local v1, "omcProperty":Ljava/lang/String;
    const-string v3, "OMC"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "SED"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    .line 123
    :cond_1
    const/4 v2, 0x0

    return v2

    .line 120
    :cond_2
    :goto_0
    return v2

    .line 115
    .end local v1    # "omcProperty":Ljava/lang/String;
    :cond_3
    :goto_1
    return v2
.end method

.method protected needResetVolteAsDefault(II)Z
    .locals 1
    .param p1, "prevVolteDefaultEnabled"    # I
    .param p2, "newVolteDefaultEnabled"    # I

    .line 127
    const/4 v0, 0x0

    return v0
.end method

.method public query([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    .locals 1
    .param p1, "projection"    # [Ljava/lang/String;
    .param p2, "selection"    # Ljava/lang/String;
    .param p3, "args"    # [Ljava/lang/String;

    .line 131
    iget-object v0, p0, Lcom/sec/internal/ims/settings/GlobalSettingsRepo;->sInstance:Lcom/sec/internal/ims/settings/GlobalSettingsRepo;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sec/internal/ims/settings/GlobalSettingsRepo;->query([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public reset()V
    .locals 1

    .line 147
    iget-object v0, p0, Lcom/sec/internal/ims/settings/GlobalSettingsRepo;->sInstance:Lcom/sec/internal/ims/settings/GlobalSettingsRepo;

    invoke-virtual {v0}, Lcom/sec/internal/ims/settings/GlobalSettingsRepo;->reset()V

    .line 148
    return-void
.end method

.method public resetUserSettingAsDefault(ZZZ)V
    .locals 1
    .param p1, "isNeedToResetVoice"    # Z
    .param p2, "isNeedToResetVideo"    # Z
    .param p3, "isNeedToResetRcs"    # Z

    .line 165
    iget-object v0, p0, Lcom/sec/internal/ims/settings/GlobalSettingsRepo;->sInstance:Lcom/sec/internal/ims/settings/GlobalSettingsRepo;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sec/internal/ims/settings/GlobalSettingsRepo;->resetUserSettingAsDefault(ZZZ)V

    .line 166
    return-void
.end method

.method public unregisterIntentReceiver()V
    .locals 1

    .line 159
    iget-object v0, p0, Lcom/sec/internal/ims/settings/GlobalSettingsRepo;->sInstance:Lcom/sec/internal/ims/settings/GlobalSettingsRepo;

    if-eqz v0, :cond_0

    .line 160
    invoke-virtual {v0}, Lcom/sec/internal/ims/settings/GlobalSettingsRepo;->unregisterIntentReceiver()V

    .line 162
    :cond_0
    return-void
.end method

.method public update(Landroid/content/ContentValues;)V
    .locals 1
    .param p1, "values"    # Landroid/content/ContentValues;

    .line 143
    iget-object v0, p0, Lcom/sec/internal/ims/settings/GlobalSettingsRepo;->sInstance:Lcom/sec/internal/ims/settings/GlobalSettingsRepo;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/settings/GlobalSettingsRepo;->update(Landroid/content/ContentValues;)V

    .line 144
    return-void
.end method

.method public updateMno(Landroid/content/ContentValues;)Z
    .locals 9
    .param p1, "mnoinfo"    # Landroid/content/ContentValues;

    .line 76
    const-string v0, "mnoname"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/internal/constants/Mno;->fromName(Ljava/lang/String;)Lcom/sec/internal/constants/Mno;

    move-result-object v1

    .line 77
    .local v1, "mno":Lcom/sec/internal/constants/Mno;
    const-string v2, "imsSwitchType"

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    invoke-virtual {v1}, Lcom/sec/internal/constants/Mno;->isChn()Z

    move-result v2

    if-nez v2, :cond_0

    .line 78
    sget-object v1, Lcom/sec/internal/constants/Mno;->DEFAULT:Lcom/sec/internal/constants/Mno;

    .line 83
    :cond_0
    invoke-virtual {v1}, Lcom/sec/internal/constants/Mno;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    iget v2, p0, Lcom/sec/internal/ims/settings/GlobalSettingsRepo;->mPhoneId:I

    invoke-direct {p0, v1, v2}, Lcom/sec/internal/ims/settings/GlobalSettingsRepo;->makeInstance(Lcom/sec/internal/constants/Mno;I)V

    .line 86
    iget-object v2, p0, Lcom/sec/internal/ims/settings/GlobalSettingsRepo;->sInstance:Lcom/sec/internal/ims/settings/GlobalSettingsRepo;

    invoke-virtual {v2, p1}, Lcom/sec/internal/ims/settings/GlobalSettingsRepo;->updateMno(Landroid/content/ContentValues;)Z

    move-result v2

    .line 88
    .local v2, "updated":Z
    const-string v3, "globalgcenabled"

    invoke-virtual {p1, v3}, Landroid/content/ContentValues;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    .line 89
    .local v4, "isGlobalGcEnabled":Z
    invoke-virtual {p0}, Lcom/sec/internal/ims/settings/GlobalSettingsRepo;->getGlobalGcEnabled()Z

    move-result v6

    if-eq v6, v4, :cond_1

    .line 90
    iget-object v6, p0, Lcom/sec/internal/ims/settings/GlobalSettingsRepo;->sInstance:Lcom/sec/internal/ims/settings/GlobalSettingsRepo;

    invoke-virtual {v6, v4}, Lcom/sec/internal/ims/settings/GlobalSettingsRepo;->loadGlobalGcSettings(Z)V

    .line 91
    const/4 v2, 0x1

    .line 95
    :cond_1
    iget v6, p0, Lcom/sec/internal/ims/settings/GlobalSettingsRepo;->mPhoneId:I

    iget-object v7, p0, Lcom/sec/internal/ims/settings/GlobalSettingsRepo;->mContext:Landroid/content/Context;

    const-string v8, "globalsettings"

    invoke-static {v6, v7, v8, v5, v5}, Lcom/sec/internal/helper/ImsSharedPrefHelper;->getSharedPref(ILandroid/content/Context;Ljava/lang/String;IZ)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 97
    .local v5, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    .line 98
    .local v6, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v7

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-interface {v6, v0, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 99
    const-string v0, "mvnoname"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v7

    invoke-virtual {v7, v8}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-interface {v6, v0, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 100
    const-string v0, "NetworkName"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v7

    invoke-virtual {v7, v8}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-interface {v6, v0, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 101
    invoke-interface {v6, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 102
    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 104
    return v2
.end method

.method protected updateSystemSettings(Lcom/sec/internal/constants/Mno;Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 0
    .param p1, "mno"    # Lcom/sec/internal/constants/Mno;
    .param p2, "mnoinfo"    # Landroid/content/ContentValues;
    .param p3, "newMnoname"    # Ljava/lang/String;
    .param p4, "prevMnoname"    # Ljava/lang/String;
    .param p5, "spValueVolte"    # I
    .param p6, "spValueVideo"    # I

    .line 181
    return-void
.end method
