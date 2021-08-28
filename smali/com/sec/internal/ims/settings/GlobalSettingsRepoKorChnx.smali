.class public Lcom/sec/internal/ims/settings/GlobalSettingsRepoKorChnx;
.super Lcom/sec/internal/ims/settings/GlobalSettingsRepoBase;
.source "GlobalSettingsRepoKorChnx.java"


# instance fields
.field private final LOG_TAG:Ljava/lang/String;

.field private mIsCTCImsMpsEnabled:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "phoneId"    # I

    .line 39
    invoke-direct {p0, p1, p2}, Lcom/sec/internal/ims/settings/GlobalSettingsRepoBase;-><init>(Landroid/content/Context;I)V

    .line 35
    const-class v0, Lcom/sec/internal/ims/settings/GlobalSettingsRepoKorChnx;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/settings/GlobalSettingsRepoKorChnx;->LOG_TAG:Ljava/lang/String;

    .line 36
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/internal/ims/settings/GlobalSettingsRepoKorChnx;->mIsCTCImsMpsEnabled:Z

    .line 40
    return-void
.end method

.method private static isSupport5GConcept()Z
    .locals 5

    .line 218
    const/4 v0, 0x0

    .line 219
    .local v0, "ret":Z
    const/16 v1, 0x17

    .line 221
    .local v1, "NETWORK_MODE_NR_ONLY":I
    :try_start_0
    const-string/jumbo v2, "ro.telephony.default_network"

    const-string v3, "0,0"

    invoke-static {v2, v3}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 222
    .local v2, "defaultNetworkModes":[Ljava/lang/String;
    const/4 v3, 0x0

    aget-object v3, v2, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 223
    .local v3, "networkMode":I
    const/16 v4, 0x17

    if-lt v3, v4, :cond_0

    .line 224
    const/4 v0, 0x1

    .line 227
    .end local v2    # "defaultNetworkModes":[Ljava/lang/String;
    .end local v3    # "networkMode":I
    :cond_0
    goto :goto_0

    .line 226
    :catch_0
    move-exception v2

    .line 228
    :goto_0
    return v0
.end method


# virtual methods
.method public updateMno(Landroid/content/ContentValues;)Z
    .locals 31
    .param p1, "mnoinfo"    # Landroid/content/ContentValues;

    .line 49
    move-object/from16 v8, p0

    move-object/from16 v9, p1

    iget-object v1, v8, Lcom/sec/internal/ims/settings/GlobalSettingsRepoKorChnx;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 51
    :try_start_0
    const-string v0, "hassim"

    invoke-virtual {v9, v0}, Landroid/content/ContentValues;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    .line 52
    .local v0, "hasSIM":Ljava/lang/Boolean;
    const/4 v10, 0x0

    if-nez v0, :cond_0

    .line 53
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    move-object v0, v2

    move-object v11, v0

    goto :goto_0

    .line 52
    :cond_0
    move-object v11, v0

    .line 55
    .end local v0    # "hasSIM":Ljava/lang/Boolean;
    .local v11, "hasSIM":Ljava/lang/Boolean;
    :goto_0
    const-string v0, "mnoname"

    invoke-virtual {v9, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v12, v0

    .line 56
    .local v12, "newMnoname":Ljava/lang/String;
    const-string v0, "imsSwitchType"

    invoke-virtual {v9, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 57
    .local v0, "cscImsSettings":Ljava/lang/Integer;
    if-nez v0, :cond_1

    .line 58
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object v0, v2

    move-object v13, v0

    goto :goto_1

    .line 57
    :cond_1
    move-object v13, v0

    .line 60
    .end local v0    # "cscImsSettings":Ljava/lang/Integer;
    .local v13, "cscImsSettings":Ljava/lang/Integer;
    :goto_1
    const-string v0, "imsi"

    invoke-virtual {v9, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v14, v0

    .line 61
    .local v14, "curImsi":Ljava/lang/String;
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 63
    iget-object v0, v8, Lcom/sec/internal/ims/settings/GlobalSettingsRepoKorChnx;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "simSlot["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v8, Lcom/sec/internal/ims/settings/GlobalSettingsRepoKorChnx;->mPhoneId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] updateMno: hasSIM:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", cscImsSettings:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 64
    invoke-virtual/range {p0 .. p1}, Lcom/sec/internal/ims/settings/GlobalSettingsRepoKorChnx;->logMnoInfo(Landroid/content/ContentValues;)V

    .line 66
    invoke-virtual/range {p0 .. p0}, Lcom/sec/internal/ims/settings/GlobalSettingsRepoKorChnx;->getPrevGcEnabled()Z

    move-result v15

    .line 67
    .local v15, "prevGcEnabled":Z
    const-string v0, "globalgcenabled"

    invoke-static {v9, v0, v10}, Lcom/sec/internal/helper/CollectionUtils;->getBooleanValue(Landroid/content/ContentValues;Ljava/lang/String;Z)Z

    move-result v7

    .line 68
    .local v7, "newGcEnabled":Z
    if-eq v15, v7, :cond_2

    const/4 v1, 0x1

    goto :goto_2

    :cond_2
    move v1, v10

    :goto_2
    move v6, v1

    .line 69
    .local v6, "isGcEnabledChange":Z
    invoke-virtual {v8, v6}, Lcom/sec/internal/ims/settings/GlobalSettingsRepoKorChnx;->setIsGcEnabledChange(Z)V

    .line 71
    iget-object v1, v8, Lcom/sec/internal/ims/settings/GlobalSettingsRepoKorChnx;->LOG_TAG:Ljava/lang/String;

    iget v2, v8, Lcom/sec/internal/ims/settings/GlobalSettingsRepoKorChnx;->mPhoneId:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateMno: prevGcEnabled: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", newGcEnabled: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 72
    if-eqz v6, :cond_3

    .line 73
    const/4 v2, 0x0

    const/4 v3, -0x1

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/16 v16, 0x1

    invoke-virtual/range {p0 .. p0}, Lcom/sec/internal/ims/settings/GlobalSettingsRepoKorChnx;->readRcsDefaultEnabled()I

    move-result v17

    move-object/from16 v1, p0

    move/from16 v18, v6

    .end local v6    # "isGcEnabledChange":Z
    .local v18, "isGcEnabledChange":Z
    move/from16 v6, v16

    move v10, v7

    .end local v7    # "newGcEnabled":Z
    .local v10, "newGcEnabled":Z
    move/from16 v7, v17

    invoke-virtual/range {v1 .. v7}, Lcom/sec/internal/ims/settings/GlobalSettingsRepoKorChnx;->setSettingsFromSp(ZIZIZI)V

    goto :goto_3

    .line 72
    .end local v10    # "newGcEnabled":Z
    .end local v18    # "isGcEnabledChange":Z
    .restart local v6    # "isGcEnabledChange":Z
    .restart local v7    # "newGcEnabled":Z
    :cond_3
    move/from16 v18, v6

    move v10, v7

    .line 75
    .end local v6    # "isGcEnabledChange":Z
    .end local v7    # "newGcEnabled":Z
    .restart local v10    # "newGcEnabled":Z
    .restart local v18    # "isGcEnabledChange":Z
    :goto_3
    invoke-virtual {v8, v10}, Lcom/sec/internal/ims/settings/GlobalSettingsRepoKorChnx;->setPrevGcEnabled(Z)V

    .line 77
    invoke-static {v12}, Lcom/sec/internal/constants/Mno;->fromName(Ljava/lang/String;)Lcom/sec/internal/constants/Mno;

    move-result-object v7

    .line 79
    .local v7, "mno":Lcom/sec/internal/constants/Mno;
    iget v1, v8, Lcom/sec/internal/ims/settings/GlobalSettingsRepoKorChnx;->mPhoneId:I

    iget-object v2, v8, Lcom/sec/internal/ims/settings/GlobalSettingsRepoKorChnx;->mContext:Landroid/content/Context;

    const-string v3, "globalsettings"

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4, v4}, Lcom/sec/internal/helper/ImsSharedPrefHelper;->getSharedPref(ILandroid/content/Context;Ljava/lang/String;IZ)Landroid/content/SharedPreferences;

    move-result-object v6

    .line 81
    .local v6, "sp":Landroid/content/SharedPreferences;
    iget-object v1, v8, Lcom/sec/internal/ims/settings/GlobalSettingsRepoKorChnx;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->RCS_USER_SETTING1:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;->getName()Ljava/lang/String;

    move-result-object v2

    iget v3, v8, Lcom/sec/internal/ims/settings/GlobalSettingsRepoKorChnx;->mPhoneId:I

    invoke-static {v1, v2, v3}, Lcom/sec/internal/helper/DmConfigHelper;->getImsUserSetting(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v5

    .line 83
    .local v5, "spValueRcs":I
    invoke-virtual {v8, v6}, Lcom/sec/internal/ims/settings/GlobalSettingsRepoKorChnx;->getPreviousImsi(Landroid/content/SharedPreferences;)Ljava/lang/String;

    move-result-object v4

    .line 84
    .local v4, "prevImsi":Ljava/lang/String;
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v3, -0x1

    if-nez v1, :cond_4

    invoke-static {v14, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    if-eq v5, v3, :cond_4

    .line 85
    iget-object v1, v8, Lcom/sec/internal/ims/settings/GlobalSettingsRepoKorChnx;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "simSlot["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v8, Lcom/sec/internal/ims/settings/GlobalSettingsRepoKorChnx;->mPhoneId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "] rcs_user_switch_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 86
    const/4 v2, 0x0

    const/4 v3, -0x1

    const/16 v19, 0x0

    const/16 v20, -0x1

    const/16 v21, 0x1

    move-object/from16 v1, p0

    const/4 v0, -0x1

    move-object/from16 v17, v4

    .end local v4    # "prevImsi":Ljava/lang/String;
    .local v17, "prevImsi":Ljava/lang/String;
    move/from16 v4, v19

    move/from16 v19, v5

    .end local v5    # "spValueRcs":I
    .local v19, "spValueRcs":I
    move/from16 v5, v20

    move-object/from16 v22, v6

    .end local v6    # "sp":Landroid/content/SharedPreferences;
    .local v22, "sp":Landroid/content/SharedPreferences;
    move/from16 v6, v21

    move/from16 v20, v10

    move-object v10, v7

    .end local v7    # "mno":Lcom/sec/internal/constants/Mno;
    .local v10, "mno":Lcom/sec/internal/constants/Mno;
    .local v20, "newGcEnabled":Z
    move/from16 v7, v19

    invoke-virtual/range {v1 .. v7}, Lcom/sec/internal/ims/settings/GlobalSettingsRepoKorChnx;->setSettingsFromSp(ZIZIZI)V

    goto :goto_4

    .line 84
    .end local v17    # "prevImsi":Ljava/lang/String;
    .end local v19    # "spValueRcs":I
    .end local v20    # "newGcEnabled":Z
    .end local v22    # "sp":Landroid/content/SharedPreferences;
    .restart local v4    # "prevImsi":Ljava/lang/String;
    .restart local v5    # "spValueRcs":I
    .restart local v6    # "sp":Landroid/content/SharedPreferences;
    .restart local v7    # "mno":Lcom/sec/internal/constants/Mno;
    .local v10, "newGcEnabled":Z
    :cond_4
    move v0, v3

    move-object/from16 v17, v4

    move/from16 v19, v5

    move-object/from16 v22, v6

    move/from16 v20, v10

    move-object v10, v7

    .line 89
    .end local v4    # "prevImsi":Ljava/lang/String;
    .end local v5    # "spValueRcs":I
    .end local v6    # "sp":Landroid/content/SharedPreferences;
    .end local v7    # "mno":Lcom/sec/internal/constants/Mno;
    .local v10, "mno":Lcom/sec/internal/constants/Mno;
    .restart local v17    # "prevImsi":Ljava/lang/String;
    .restart local v19    # "spValueRcs":I
    .restart local v20    # "newGcEnabled":Z
    .restart local v22    # "sp":Landroid/content/SharedPreferences;
    :goto_4
    iput-object v9, v8, Lcom/sec/internal/ims/settings/GlobalSettingsRepoKorChnx;->mMnoinfo:Landroid/content/ContentValues;

    .line 91
    sget-object v1, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->VOLTE_ROAMING:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    iget-object v2, v8, Lcom/sec/internal/ims/settings/GlobalSettingsRepoKorChnx;->mContext:Landroid/content/Context;

    sget v3, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->VOLTE_ROAMING_UNKNOWN:I

    invoke-virtual {v1, v2, v3}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;->get(Landroid/content/Context;I)I

    move-result v1

    .line 94
    .local v1, "roamingHDVoiceOn":I
    sget-object v2, Lcom/sec/internal/constants/Mno;->SKT:Lcom/sec/internal/constants/Mno;

    if-eq v10, v2, :cond_5

    sget-object v2, Lcom/sec/internal/constants/Mno;->KT:Lcom/sec/internal/constants/Mno;

    if-ne v10, v2, :cond_6

    :cond_5
    sget v2, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->VOLTE_ROAMING_UNKNOWN:I

    if-ne v1, v2, :cond_6

    .line 95
    sget-object v2, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->VOLTE_ROAMING:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    iget-object v3, v8, Lcom/sec/internal/ims/settings/GlobalSettingsRepoKorChnx;->mContext:Landroid/content/Context;

    sget v4, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->VOLTE_ROAMING_ENABLED:I

    invoke-virtual {v2, v3, v4}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;->set(Landroid/content/Context;I)V

    .line 97
    iget-object v2, v8, Lcom/sec/internal/ims/settings/GlobalSettingsRepoKorChnx;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "simSlot["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v8, Lcom/sec/internal/ims/settings/GlobalSettingsRepoKorChnx;->mPhoneId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " updateMno: roamingHDVoiceOn has no value. set default value as 1 in the first place"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 98
    sget-object v2, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->VOLTE_ROAMING:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    iget-object v3, v8, Lcom/sec/internal/ims/settings/GlobalSettingsRepoKorChnx;->mContext:Landroid/content/Context;

    sget v4, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->VOLTE_ROAMING_UNKNOWN:I

    invoke-virtual {v2, v3, v4}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;->get(Landroid/content/Context;I)I

    move-result v1

    move v7, v1

    goto :goto_5

    .line 101
    :cond_6
    move v7, v1

    .end local v1    # "roamingHDVoiceOn":I
    .local v7, "roamingHDVoiceOn":I
    :goto_5
    iget-object v1, v8, Lcom/sec/internal/ims/settings/GlobalSettingsRepoKorChnx;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "simSlot["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v8, Lcom/sec/internal/ims/settings/GlobalSettingsRepoKorChnx;->mPhoneId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " updateMno: roamingHDVoiceOn ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 115
    iget-object v1, v8, Lcom/sec/internal/ims/settings/GlobalSettingsRepoKorChnx;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->VOLTE_SLOT1:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    .line 116
    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;->getName()Ljava/lang/String;

    move-result-object v2

    iget v3, v8, Lcom/sec/internal/ims/settings/GlobalSettingsRepoKorChnx;->mPhoneId:I

    .line 115
    invoke-static {v1, v2, v3}, Lcom/sec/internal/helper/DmConfigHelper;->getImsUserSetting(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    .line 118
    .local v1, "spValueVolte":I
    sget-object v2, Lcom/sec/internal/constants/Mno;->CTC:Lcom/sec/internal/constants/Mno;

    if-eq v10, v2, :cond_9

    sget-object v2, Lcom/sec/internal/constants/Mno;->CTCMO:Lcom/sec/internal/constants/Mno;

    if-ne v10, v2, :cond_7

    goto :goto_6

    .line 125
    :cond_7
    sget-object v2, Lcom/sec/internal/constants/Mno;->CU:Lcom/sec/internal/constants/Mno;

    if-eq v10, v2, :cond_8

    sget-object v2, Lcom/sec/internal/constants/Mno;->CMCC:Lcom/sec/internal/constants/Mno;

    if-ne v10, v2, :cond_b

    .line 127
    :cond_8
    invoke-static {}, Lcom/sec/internal/ims/settings/GlobalSettingsRepoKorChnx;->isSupport5GConcept()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-static {}, Lcom/sec/internal/helper/OmcCode;->isMainlandChinaOmcCode()Z

    move-result v2

    if-eqz v2, :cond_b

    if-eqz v1, :cond_b

    .line 128
    iget-object v2, v8, Lcom/sec/internal/ims/settings/GlobalSettingsRepoKorChnx;->mContext:Landroid/content/Context;

    iget v3, v8, Lcom/sec/internal/ims/settings/GlobalSettingsRepoKorChnx;->mPhoneId:I

    const/4 v4, 0x0

    invoke-static {v2, v4, v3}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->setVoiceCallType(Landroid/content/Context;II)V

    .line 129
    const/4 v1, 0x0

    goto :goto_7

    .line 119
    :cond_9
    :goto_6
    invoke-static {}, Lcom/sec/internal/ims/settings/GlobalSettingsRepoKorChnx;->isSupport5GConcept()Z

    move-result v2

    if-nez v2, :cond_a

    const-string/jumbo v2, "ro.product.first_api_level"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/os/SemSystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    const/16 v3, 0x1d

    if-lt v2, v3, :cond_b

    .line 120
    :cond_a
    invoke-static {}, Lcom/sec/internal/helper/OmcCode;->isChinaOmcCode()Z

    move-result v2

    if-eqz v2, :cond_b

    if-eqz v1, :cond_b

    .line 122
    iget-object v2, v8, Lcom/sec/internal/ims/settings/GlobalSettingsRepoKorChnx;->mContext:Landroid/content/Context;

    iget v3, v8, Lcom/sec/internal/ims/settings/GlobalSettingsRepoKorChnx;->mPhoneId:I

    const/4 v4, 0x0

    invoke-static {v2, v4, v3}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->setVoiceCallType(Landroid/content/Context;II)V

    .line 123
    const/4 v1, 0x0

    .line 132
    :cond_b
    :goto_7
    invoke-virtual {v10}, Lcom/sec/internal/constants/Mno;->isHkMo()Z

    move-result v2

    if-nez v2, :cond_c

    sget-object v2, Lcom/sec/internal/constants/Mno;->CTCMO:Lcom/sec/internal/constants/Mno;

    if-ne v10, v2, :cond_d

    .line 134
    :cond_c
    const/4 v1, 0x0

    .line 137
    :cond_d
    invoke-virtual/range {p0 .. p1}, Lcom/sec/internal/ims/settings/GlobalSettingsRepoKorChnx;->updateRequires(Landroid/content/ContentValues;)Z

    move-result v2

    if-nez v2, :cond_f

    .line 138
    iget-object v2, v8, Lcom/sec/internal/ims/settings/GlobalSettingsRepoKorChnx;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "simSlot["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v8, Lcom/sec/internal/ims/settings/GlobalSettingsRepoKorChnx;->mPhoneId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "] updateMno: update not requires"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 139
    move/from16 v6, v19

    .end local v19    # "spValueRcs":I
    .local v6, "spValueRcs":I
    if-ne v6, v0, :cond_e

    .line 140
    invoke-virtual/range {p0 .. p0}, Lcom/sec/internal/ims/settings/GlobalSettingsRepoKorChnx;->readRcsDefaultEnabled()I

    move-result v0

    .line 141
    .local v0, "rcsDefaultEnabled":I
    iget-object v2, v8, Lcom/sec/internal/ims/settings/GlobalSettingsRepoKorChnx;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "simSlot["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v8, Lcom/sec/internal/ims/settings/GlobalSettingsRepoKorChnx;->mPhoneId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "] updateMno: Set rcs_user_switch from globalsettings:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 142
    const v2, 0x10020006

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, v8, Lcom/sec/internal/ims/settings/GlobalSettingsRepoKorChnx;->mPhoneId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "GLB:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 143
    iget-object v2, v8, Lcom/sec/internal/ims/settings/GlobalSettingsRepoKorChnx;->mContext:Landroid/content/Context;

    iget v3, v8, Lcom/sec/internal/ims/settings/GlobalSettingsRepoKorChnx;->mPhoneId:I

    invoke-static {v2, v0, v3}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->setRcsUserSetting(Landroid/content/Context;II)V

    .line 145
    .end local v0    # "rcsDefaultEnabled":I
    :cond_e
    const/4 v0, 0x0

    return v0

    .line 148
    .end local v6    # "spValueRcs":I
    .restart local v19    # "spValueRcs":I
    :cond_f
    move/from16 v6, v19

    .end local v19    # "spValueRcs":I
    .restart local v6    # "spValueRcs":I
    iget-object v2, v8, Lcom/sec/internal/ims/settings/GlobalSettingsRepoKorChnx;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "simSlot["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v8, Lcom/sec/internal/ims/settings/GlobalSettingsRepoKorChnx;->mPhoneId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "] updateMno: update requires"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 150
    move-object/from16 v5, v22

    .end local v22    # "sp":Landroid/content/SharedPreferences;
    .local v5, "sp":Landroid/content/SharedPreferences;
    invoke-virtual {v8, v5}, Lcom/sec/internal/ims/settings/GlobalSettingsRepoKorChnx;->getPreviousMno(Landroid/content/SharedPreferences;)Ljava/lang/String;

    move-result-object v4

    .line 151
    .local v4, "prevMnoname":Ljava/lang/String;
    const-string v2, "globalgcenabled"

    const/4 v3, 0x0

    invoke-interface {v5, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 153
    .local v3, "prevGlobalGcEnabled":Z
    invoke-virtual/range {p0 .. p0}, Lcom/sec/internal/ims/settings/GlobalSettingsRepoKorChnx;->reset()V

    .line 154
    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 155
    .local v2, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v0, "globalgcenabled"

    invoke-interface {v2, v0, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 156
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 158
    iget-object v0, v8, Lcom/sec/internal/ims/settings/GlobalSettingsRepoKorChnx;->LOG_TAG:Ljava/lang/String;

    move/from16 v19, v1

    .end local v1    # "spValueVolte":I
    .local v19, "spValueVolte":I
    iget v1, v8, Lcom/sec/internal/ims/settings/GlobalSettingsRepoKorChnx;->mPhoneId:I

    move-object/from16 v21, v2

    .end local v2    # "editor":Landroid/content/SharedPreferences$Editor;
    .local v21, "editor":Landroid/content/SharedPreferences$Editor;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v22, v3

    .end local v3    # "prevGlobalGcEnabled":Z
    .local v22, "prevGlobalGcEnabled":Z
    const-string/jumbo v3, "updateMno: ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "] => ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    .line 160
    invoke-virtual {v10}, Lcom/sec/internal/constants/Mno;->isKor()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 164
    invoke-static {v12, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 165
    const/4 v1, -0x1

    move v3, v1

    .end local v19    # "spValueVolte":I
    .restart local v1    # "spValueVolte":I
    goto :goto_8

    .line 169
    .end local v1    # "spValueVolte":I
    .restart local v19    # "spValueVolte":I
    :cond_10
    move/from16 v3, v19

    .end local v19    # "spValueVolte":I
    .local v3, "spValueVolte":I
    :goto_8
    iget-object v0, v8, Lcom/sec/internal/ims/settings/GlobalSettingsRepoKorChnx;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "simSlot["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v8, Lcom/sec/internal/ims/settings/GlobalSettingsRepoKorChnx;->mPhoneId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] voicecall_type_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Lcom/sec/internal/constants/Mno;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 172
    const/4 v0, 0x0

    .line 173
    .local v0, "isNeedToSetVoLTE":Z
    const/4 v1, 0x0

    .line 175
    .local v1, "isNeedToSetViLTE":Z
    const/4 v2, -0x1

    if-eq v3, v2, :cond_11

    .line 176
    const/4 v0, 0x1

    move v2, v0

    goto/16 :goto_a

    .line 177
    :cond_11
    iget v2, v8, Lcom/sec/internal/ims/settings/GlobalSettingsRepoKorChnx;->mPhoneId:I

    invoke-virtual {v8, v2}, Lcom/sec/internal/ims/settings/GlobalSettingsRepoKorChnx;->needResetCallSettingBySim(I)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 179
    iget-object v2, v8, Lcom/sec/internal/ims/settings/GlobalSettingsRepoKorChnx;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    move/from16 v19, v0

    .end local v0    # "isNeedToSetVoLTE":Z
    .local v19, "isNeedToSetVoLTE":Z
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v23, v1

    .end local v1    # "isNeedToSetViLTE":Z
    .local v23, "isNeedToSetViLTE":Z
    const-string/jumbo v1, "simSlot["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v8, Lcom/sec/internal/ims/settings/GlobalSettingsRepoKorChnx;->mPhoneId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "] reset voice and vt call settings db by simcard change"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 180
    const/4 v0, 0x1

    .line 181
    .end local v19    # "isNeedToSetVoLTE":Z
    .restart local v0    # "isNeedToSetVoLTE":Z
    const/4 v1, 0x1

    move v2, v0

    .end local v23    # "isNeedToSetViLTE":Z
    .restart local v1    # "isNeedToSetViLTE":Z
    goto :goto_a

    .line 182
    :cond_12
    move/from16 v19, v0

    move/from16 v23, v1

    .end local v0    # "isNeedToSetVoLTE":Z
    .end local v1    # "isNeedToSetViLTE":Z
    .restart local v19    # "isNeedToSetVoLTE":Z
    .restart local v23    # "isNeedToSetViLTE":Z
    invoke-static {v12, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_14

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_14

    .line 183
    iget-object v0, v8, Lcom/sec/internal/ims/settings/GlobalSettingsRepoKorChnx;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "simSlot["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v8, Lcom/sec/internal/ims/settings/GlobalSettingsRepoKorChnx;->mPhoneId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] reset voice and video call settings db by simcard change"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 184
    const/4 v0, 0x1

    .line 185
    .end local v19    # "isNeedToSetVoLTE":Z
    .restart local v0    # "isNeedToSetVoLTE":Z
    const/4 v1, 0x1

    .line 186
    .end local v23    # "isNeedToSetViLTE":Z
    .restart local v1    # "isNeedToSetViLTE":Z
    invoke-virtual {v8, v5}, Lcom/sec/internal/ims/settings/GlobalSettingsRepoKorChnx;->getPreviousGcfMode(Landroid/content/SharedPreferences;)Z

    move-result v2

    invoke-static {}, Lcom/sec/internal/helper/os/DeviceUtil;->getGcfMode()Ljava/lang/Boolean;

    move-result-object v19

    move/from16 v24, v0

    .end local v0    # "isNeedToSetVoLTE":Z
    .local v24, "isNeedToSetVoLTE":Z
    invoke-virtual/range {v19 .. v19}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eq v2, v0, :cond_13

    .line 191
    iget-object v0, v8, Lcom/sec/internal/ims/settings/GlobalSettingsRepoKorChnx;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v19, v1

    .end local v1    # "isNeedToSetViLTE":Z
    .local v19, "isNeedToSetViLTE":Z
    const-string/jumbo v1, "simSlot["

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v8, Lcom/sec/internal/ims/settings/GlobalSettingsRepoKorChnx;->mPhoneId:I

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "] reset voice and video call settings db by GCF ON"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    goto :goto_9

    .line 186
    .end local v19    # "isNeedToSetViLTE":Z
    .restart local v1    # "isNeedToSetViLTE":Z
    :cond_13
    move/from16 v19, v1

    .line 195
    .end local v1    # "isNeedToSetViLTE":Z
    .restart local v19    # "isNeedToSetViLTE":Z
    :goto_9
    move/from16 v1, v19

    move/from16 v2, v24

    goto :goto_a

    .end local v24    # "isNeedToSetVoLTE":Z
    .local v19, "isNeedToSetVoLTE":Z
    .restart local v23    # "isNeedToSetViLTE":Z
    :cond_14
    move/from16 v2, v19

    move/from16 v1, v23

    .end local v19    # "isNeedToSetVoLTE":Z
    .end local v23    # "isNeedToSetViLTE":Z
    .restart local v1    # "isNeedToSetViLTE":Z
    .local v2, "isNeedToSetVoLTE":Z
    :goto_a
    iget-object v0, v8, Lcom/sec/internal/ims/settings/GlobalSettingsRepoKorChnx;->mContext:Landroid/content/Context;

    sget-object v19, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->VILTE_SLOT1:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    .line 196
    move/from16 v23, v1

    .end local v1    # "isNeedToSetViLTE":Z
    .restart local v23    # "isNeedToSetViLTE":Z
    invoke-virtual/range {v19 .. v19}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;->getName()Ljava/lang/String;

    move-result-object v1

    move/from16 v19, v3

    .end local v3    # "spValueVolte":I
    .local v19, "spValueVolte":I
    iget v3, v8, Lcom/sec/internal/ims/settings/GlobalSettingsRepoKorChnx;->mPhoneId:I

    .line 195
    invoke-static {v0, v1, v3}, Lcom/sec/internal/helper/DmConfigHelper;->getImsUserSetting(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v3

    .line 197
    .local v3, "spValueVideo":I
    iget-object v0, v8, Lcom/sec/internal/ims/settings/GlobalSettingsRepoKorChnx;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v24, v4

    .end local v4    # "prevMnoname":Ljava/lang/String;
    .local v24, "prevMnoname":Ljava/lang/String;
    const-string/jumbo v4, "simSlot["

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v8, Lcom/sec/internal/ims/settings/GlobalSettingsRepoKorChnx;->mPhoneId:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "] videocall_type_"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Lcom/sec/internal/constants/Mno;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ": ["

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "]"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 199
    invoke-static {}, Lcom/sec/internal/helper/os/DeviceUtil;->getGcfMode()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_15

    .line 200
    iget-object v0, v8, Lcom/sec/internal/ims/settings/GlobalSettingsRepoKorChnx;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "simSlot["

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v8, Lcom/sec/internal/ims/settings/GlobalSettingsRepoKorChnx;->mPhoneId:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "] NOT Temporal SIM swapped: Set Video DB - "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 202
    const/4 v0, -0x1

    if-eq v3, v0, :cond_15

    .line 203
    const/4 v1, 0x1

    move v4, v1

    .end local v23    # "isNeedToSetViLTE":Z
    .restart local v1    # "isNeedToSetViLTE":Z
    goto :goto_b

    .line 206
    .end local v1    # "isNeedToSetViLTE":Z
    .restart local v23    # "isNeedToSetViLTE":Z
    :cond_15
    move/from16 v4, v23

    .end local v23    # "isNeedToSetViLTE":Z
    .local v4, "isNeedToSetViLTE":Z
    :goto_b
    iget-object v0, v8, Lcom/sec/internal/ims/settings/GlobalSettingsRepoKorChnx;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v16, v3

    .end local v3    # "spValueVideo":I
    .local v16, "spValueVideo":I
    const-string v3, "isNeedToSetVoLTE : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, "isNeedToSetViLTE : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 208
    const/4 v0, 0x0

    const/16 v23, -0x1

    move-object/from16 v1, p0

    move/from16 v25, v2

    .end local v2    # "isNeedToSetVoLTE":Z
    .local v25, "isNeedToSetVoLTE":Z
    move/from16 v30, v22

    move/from16 v22, v16

    move/from16 v16, v30

    .local v16, "prevGlobalGcEnabled":Z
    .local v22, "spValueVideo":I
    move/from16 v3, v19

    move/from16 v26, v4

    .end local v4    # "isNeedToSetViLTE":Z
    .local v26, "isNeedToSetViLTE":Z
    move-object/from16 v27, v5

    .end local v5    # "sp":Landroid/content/SharedPreferences;
    .local v27, "sp":Landroid/content/SharedPreferences;
    move/from16 v5, v22

    move/from16 v28, v6

    .end local v6    # "spValueRcs":I
    .local v28, "spValueRcs":I
    move v6, v0

    move/from16 v29, v7

    .end local v7    # "roamingHDVoiceOn":I
    .local v29, "roamingHDVoiceOn":I
    move/from16 v7, v23

    invoke-virtual/range {v1 .. v7}, Lcom/sec/internal/ims/settings/GlobalSettingsRepoKorChnx;->setSettingsFromSp(ZIZIZI)V

    .line 210
    iget-object v2, v8, Lcom/sec/internal/ims/settings/GlobalSettingsRepoKorChnx;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 212
    :try_start_1
    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v8, v0, v12, v1, v9}, Lcom/sec/internal/ims/settings/GlobalSettingsRepoKorChnx;->loadGlobalSettingsFromJson(ZLjava/lang/String;ILandroid/content/ContentValues;)V

    .line 213
    monitor-exit v2

    .line 214
    const/4 v0, 0x1

    return v0

    .line 213
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 61
    .end local v10    # "mno":Lcom/sec/internal/constants/Mno;
    .end local v11    # "hasSIM":Ljava/lang/Boolean;
    .end local v12    # "newMnoname":Ljava/lang/String;
    .end local v13    # "cscImsSettings":Ljava/lang/Integer;
    .end local v14    # "curImsi":Ljava/lang/String;
    .end local v15    # "prevGcEnabled":Z
    .end local v16    # "prevGlobalGcEnabled":Z
    .end local v17    # "prevImsi":Ljava/lang/String;
    .end local v18    # "isGcEnabledChange":Z
    .end local v19    # "spValueVolte":I
    .end local v20    # "newGcEnabled":Z
    .end local v21    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v22    # "spValueVideo":I
    .end local v24    # "prevMnoname":Ljava/lang/String;
    .end local v25    # "isNeedToSetVoLTE":Z
    .end local v26    # "isNeedToSetViLTE":Z
    .end local v27    # "sp":Landroid/content/SharedPreferences;
    .end local v28    # "spValueRcs":I
    .end local v29    # "roamingHDVoiceOn":I
    :catchall_1
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0
.end method
