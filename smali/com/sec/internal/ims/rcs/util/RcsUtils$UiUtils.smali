.class public Lcom/sec/internal/ims/rcs/util/RcsUtils$UiUtils;
.super Ljava/lang/Object;
.source "RcsUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/rcs/util/RcsUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UiUtils"
.end annotation


# static fields
.field public static final RCS_PREF_ALWAYS_ASK:I = 0x2

.field public static final RCS_PREF_ALWAYS_CONNECT:I = 0x1

.field public static final RCS_PREF_NEVER:I

.field private static mHasRcsUserConsent:Z

.field private static mRcsPdnDialog:Landroid/app/AlertDialog;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 172
    const/4 v0, 0x0

    sput-boolean v0, Lcom/sec/internal/ims/rcs/util/RcsUtils$UiUtils;->mHasRcsUserConsent:Z

    .line 173
    const/4 v0, 0x0

    sput-object v0, Lcom/sec/internal/ims/rcs/util/RcsUtils$UiUtils;->mRcsPdnDialog:Landroid/app/AlertDialog;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 171
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100(Landroid/content/Context;IZI)V
    .locals 0
    .param p0, "x0"    # Landroid/content/Context;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z
    .param p3, "x3"    # I

    .line 171
    invoke-static {p0, p1, p2, p3}, Lcom/sec/internal/ims/rcs/util/RcsUtils$UiUtils;->setRcsPrefValue(Landroid/content/Context;IZI)V

    return-void
.end method

.method static synthetic access$202(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .line 171
    sput-boolean p0, Lcom/sec/internal/ims/rcs/util/RcsUtils$UiUtils;->mHasRcsUserConsent:Z

    return p0
.end method

.method private static createRcsPdnPrefClickListener(Landroid/content/Context;ZI)Landroid/content/DialogInterface$OnClickListener;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "isRoaming"    # Z
    .param p2, "pref"    # I

    .line 323
    new-instance v0, Lcom/sec/internal/ims/rcs/util/RcsUtils$UiUtils$1;

    invoke-direct {v0, p2, p1, p0}, Lcom/sec/internal/ims/rcs/util/RcsUtils$UiUtils$1;-><init>(IZLandroid/content/Context;)V

    return-object v0
.end method

.method public static getRcsUserConsent(Landroid/content/Context;Lcom/sec/internal/helper/os/ITelephonyManager;I)Z
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "tm"    # Lcom/sec/internal/helper/os/ITelephonyManager;
    .param p2, "phoneId"    # I

    .line 287
    const/4 v0, 0x1

    .line 288
    .local v0, "roamPref":I
    const/4 v1, 0x1

    .line 289
    .local v1, "homePref":I
    const-string/jumbo v2, "rcs_roaming_pref"

    const/4 v3, 0x1

    invoke-static {p0, p2, v2, v3}, Lcom/sec/ims/settings/UserConfiguration;->getUserConfig(Landroid/content/Context;ILjava/lang/String;I)I

    move-result v0

    .line 291
    const-string/jumbo v2, "rcs_home_pref"

    invoke-static {p0, p2, v2, v3}, Lcom/sec/ims/settings/UserConfiguration;->getUserConfig(Landroid/content/Context;ILjava/lang/String;I)I

    move-result v1

    .line 293
    invoke-interface {p1}, Lcom/sec/internal/helper/os/ITelephonyManager;->isNetworkRoaming()Z

    move-result v2

    .line 294
    .local v2, "isRoaming":Z
    if-eqz v2, :cond_0

    move v4, v0

    goto :goto_0

    :cond_0
    move v4, v1

    .line 295
    .local v4, "rcsConnectPref":I
    :goto_0
    invoke-static {}, Lcom/sec/internal/ims/rcs/util/RcsUtils;->access$000()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getRcsUserConsent: rcsConnectPref = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " , isRoaming = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    sget-boolean v5, Lcom/sec/internal/ims/rcs/util/RcsUtils$UiUtils;->mHasRcsUserConsent:Z

    const/4 v6, 0x0

    if-eqz v5, :cond_1

    .line 299
    sput-boolean v6, Lcom/sec/internal/ims/rcs/util/RcsUtils$UiUtils;->mHasRcsUserConsent:Z

    .line 300
    return v3

    .line 303
    :cond_1
    if-nez v4, :cond_3

    .line 304
    invoke-static {p2}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v5

    .line 305
    .local v5, "mno":Lcom/sec/internal/constants/Mno;
    invoke-virtual {v5}, Lcom/sec/internal/constants/Mno;->isKor()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 306
    invoke-static {p0, p2, v2, v3}, Lcom/sec/internal/ims/rcs/util/RcsUtils$UiUtils;->setRcsPrefValue(Landroid/content/Context;IZI)V

    .line 307
    return v3

    .line 309
    :cond_2
    return v6

    .line 310
    .end local v5    # "mno":Lcom/sec/internal/constants/Mno;
    :cond_3
    const/4 v5, 0x2

    if-ne v4, v5, :cond_5

    .line 311
    invoke-static {p0}, Lcom/sec/internal/helper/NetworkUtil;->isMobileDataOn(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_4

    sget-object v3, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->AIRPLANE_MODE:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    invoke-virtual {v3, p0, v6}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;->get(Landroid/content/Context;I)I

    move-result v3

    sget v5, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->AIRPLANE_MODE_ON:I

    if-eq v3, v5, :cond_4

    .line 312
    invoke-static {p0, v2}, Lcom/sec/internal/ims/rcs/util/RcsUtils$UiUtils;->showPdnConfirmation(Landroid/content/Context;Z)V

    .line 314
    :cond_4
    return v6

    .line 318
    :cond_5
    return v3
.end method

.method public static isMainSwitchVisible(Landroid/content/Context;I)Z
    .locals 7
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "phoneId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 181
    invoke-static {p1}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->getSimManagerFromSimSlot(I)Lcom/sec/internal/interfaces/ims/core/ISimManager;

    move-result-object v0

    .line 182
    .local v0, "sm":Lcom/sec/internal/interfaces/ims/core/ISimManager;
    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->isSimAvailable()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 186
    :cond_0
    nop

    .line 187
    const-string/jumbo v2, "rcs_show_main_switch"

    invoke-static {p1, v2, v1}, Lcom/sec/internal/ims/registry/ImsRegistry;->getBoolean(ILjava/lang/String;Z)Z

    move-result v2

    .line 188
    .local v2, "mIsVisible":Z
    invoke-static {p0, p1}, Lcom/sec/internal/ims/rcs/util/RcsUtils$UiUtils;->isRcsEnabledinSettings(Landroid/content/Context;I)Z

    move-result v3

    .line 189
    .local v3, "rcsEnabled":Z
    invoke-static {}, Lcom/sec/internal/ims/rcs/util/RcsUtils;->access$000()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isMainSwitchVisible: mIsVisible= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ", rcsEnabled= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, p1, v5}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 191
    if-eqz v2, :cond_1

    if-eqz v3, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1

    .line 183
    .end local v2    # "mIsVisible":Z
    .end local v3    # "rcsEnabled":Z
    :cond_2
    :goto_0
    return v1
.end method

.method public static isPctMode()Z
    .locals 2

    .line 227
    const-string/jumbo v0, "persist.ims.pctmode"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 228
    const/4 v0, 0x1

    return v0

    .line 230
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static isRcsEnabledEnrichedCalling(I)Z
    .locals 4
    .param p0, "phoneId"    # I

    .line 268
    invoke-static {p0}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->getSimManagerFromSimSlot(I)Lcom/sec/internal/interfaces/ims/core/ISimManager;

    move-result-object v0

    .line 269
    .local v0, "sm":Lcom/sec/internal/interfaces/ims/core/ISimManager;
    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->isSimAvailable()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 273
    :cond_0
    const/4 v1, 0x0

    .line 275
    .local v1, "isEnrichedCalling":Z
    :try_start_0
    const-string v2, "ec"

    const/4 v3, -0x1

    invoke-static {v2, v3, p0}, Lcom/sec/internal/ims/registry/ImsRegistry;->isServiceAvailable(Ljava/lang/String;II)Z

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v2

    .line 278
    goto :goto_0

    .line 276
    :catch_0
    move-exception v2

    .line 277
    .local v2, "e":Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    .line 280
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_0
    return v1

    .line 270
    .end local v1    # "isEnrichedCalling":Z
    :cond_1
    :goto_1
    const/4 v1, 0x0

    return v1
.end method

.method private static isRcsEnabledInImsSwitch(Landroid/content/Context;I)Z
    .locals 5
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "phoneId"    # I

    .line 211
    const/4 v0, 0x0

    .line 212
    .local v0, "isEnableRcs":Z
    invoke-static {p1}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->getSimManagerFromSimSlot(I)Lcom/sec/internal/interfaces/ims/core/ISimManager;

    move-result-object v1

    .line 213
    .local v1, "sm":Lcom/sec/internal/interfaces/ims/core/ISimManager;
    if-nez v1, :cond_0

    .line 214
    return v0

    .line 216
    :cond_0
    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getMnoInfo()Landroid/content/ContentValues;

    move-result-object v2

    .line 217
    .local v2, "mnoInfo":Landroid/content/ContentValues;
    if-nez v2, :cond_1

    .line 218
    return v0

    .line 221
    :cond_1
    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->isLabSimCard()Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_2

    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->isSoftphoneEnabled()Z

    move-result v3

    if-nez v3, :cond_2

    .line 222
    const-string v3, "enableServiceRcs"

    invoke-static {v2, v3, v4}, Lcom/sec/internal/helper/CollectionUtils;->getBooleanValue(Landroid/content/ContentValues;Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_2
    const/4 v4, 0x1

    :cond_3
    move v0, v4

    .line 223
    return v0
.end method

.method public static isRcsEnabledinSettings(Landroid/content/Context;I)Z
    .locals 6
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "phoneId"    # I

    .line 195
    invoke-static {p0, p1}, Lcom/sec/internal/ims/rcs/util/RcsUtils$UiUtils;->isRcsEnabledInImsSwitch(Landroid/content/Context;I)Z

    move-result v0

    .line 196
    .local v0, "rcsEnabled":Z
    if-nez v0, :cond_0

    .line 197
    const/4 v1, 0x0

    return v1

    .line 200
    :cond_0
    invoke-static {p1}, Lcom/sec/internal/helper/SimUtil;->isSupportCarrierVersion(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 201
    invoke-static {p1}, Lcom/sec/internal/helper/OmcCode;->getNWCode(I)Ljava/lang/String;

    move-result-object v1

    .line 202
    .local v1, "nwCode":Ljava/lang/String;
    invoke-static {}, Lcom/sec/internal/helper/OmcCode;->get()Ljava/lang/String;

    move-result-object v2

    .line 203
    .local v2, "salesCode":Ljava/lang/String;
    invoke-static {}, Lcom/sec/internal/ims/rcs/util/RcsUtils;->access$000()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isRcsEnabledinSettings: nwCode = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " , salesCode = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, p1, v4}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 204
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 207
    .end local v1    # "nwCode":Ljava/lang/String;
    .end local v2    # "salesCode":Ljava/lang/String;
    :cond_1
    return v0
.end method

.method public static isSameRcsOperator(Lcom/sec/ims/settings/ImsProfile;Lcom/sec/ims/settings/ImsProfile;)Z
    .locals 8
    .param p0, "profile"    # Lcom/sec/ims/settings/ImsProfile;
    .param p1, "otherSlotProfile"    # Lcom/sec/ims/settings/ImsProfile;

    .line 235
    invoke-virtual {p0}, Lcom/sec/ims/settings/ImsProfile;->getMnoName()Ljava/lang/String;

    move-result-object v0

    .line 236
    .local v0, "mnoName":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/sec/ims/settings/ImsProfile;->getRcsConfigMark()Ljava/lang/String;

    move-result-object v1

    .line 237
    .local v1, "rcsConfigMark":Ljava/lang/String;
    const-string v2, ""

    .line 238
    .local v2, "otherSlotMnoName":Ljava/lang/String;
    const-string v3, ""

    .line 240
    .local v3, "otherSlotRcsConfigMark":Ljava/lang/String;
    const/4 v4, 0x0

    const/4 v5, 0x3

    if-eqz p1, :cond_0

    .line 241
    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getRcsConfigMark()Ljava/lang/String;

    move-result-object v3

    .line 242
    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getMnoName()Ljava/lang/String;

    move-result-object v2

    .line 243
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    if-le v6, v5, :cond_0

    .line 244
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    sub-int/2addr v6, v5

    invoke-virtual {v2, v4, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 248
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    if-le v6, v5, :cond_1

    .line 249
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    sub-int/2addr v6, v5

    invoke-virtual {v0, v4, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 252
    :cond_1
    invoke-static {}, Lcom/sec/internal/ims/rcs/util/RcsUtils;->access$000()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isSameOperatorByProfile: rcsConfigMark = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", otherSlotRcsConfigMark = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", mnoName = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", otherSlotMnoName = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    const-string v5, ""

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 255
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 256
    return v4

    .line 259
    :cond_2
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 260
    return v4

    .line 264
    :cond_3
    const/4 v4, 0x1

    return v4
.end method

.method private static setRcsPrefValue(Landroid/content/Context;IZI)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "phoneId"    # I
    .param p2, "isRoaming"    # Z
    .param p3, "pref"    # I

    .line 342
    if-eqz p2, :cond_0

    .line 343
    const-string/jumbo v0, "rcs_roaming_pref"

    invoke-static {p0, p1, v0, p3}, Lcom/sec/ims/settings/UserConfiguration;->setUserConfig(Landroid/content/Context;ILjava/lang/String;I)V

    goto :goto_0

    .line 346
    :cond_0
    const-string/jumbo v0, "rcs_home_pref"

    invoke-static {p0, p1, v0, p3}, Lcom/sec/ims/settings/UserConfiguration;->setUserConfig(Landroid/content/Context;ILjava/lang/String;I)V

    .line 349
    :goto_0
    return-void
.end method

.method private static showPdnConfirmation(Landroid/content/Context;Z)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "isRoaming"    # Z

    .line 352
    invoke-static {}, Lcom/sec/internal/helper/OmcCode;->isKOROmcCode()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {}, Lcom/sec/internal/helper/OmcCode;->isChinaOmcCode()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {}, Lcom/sec/internal/helper/OmcCode;->isJPNOmcCode()Z

    move-result v0

    if-nez v0, :cond_3

    .line 353
    invoke-static {}, Lcom/sec/internal/helper/OmcCode;->get()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TMO"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {}, Lcom/sec/internal/helper/OmcCode;->get()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VZW"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 354
    invoke-static {}, Lcom/sec/internal/helper/OmcCode;->get()Ljava/lang/String;

    move-result-object v0

    .line 353
    const-string v1, "ATT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 354
    invoke-static {}, Lcom/sec/internal/helper/OmcCode;->get()Ljava/lang/String;

    move-result-object v0

    const-string v1, "APP"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {}, Lcom/sec/internal/helper/OmcCode;->get()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BMC"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_1

    .line 358
    :cond_0
    sget-object v0, Lcom/sec/internal/ims/rcs/util/RcsUtils$UiUtils;->mRcsPdnDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 359
    return-void

    .line 362
    :cond_1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    const v1, 0x10302d2

    invoke-direct {v0, p0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 365
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f06001b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 366
    if-eqz p1, :cond_2

    .line 367
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060017

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 368
    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060016

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 366
    :goto_0
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 370
    nop

    .line 371
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060013

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    .line 372
    invoke-static {p0, p1, v2}, Lcom/sec/internal/ims/rcs/util/RcsUtils$UiUtils;->createRcsPdnPrefClickListener(Landroid/content/Context;ZI)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v2

    .line 370
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 375
    nop

    .line 376
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060014

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    .line 377
    invoke-static {p0, p1, v2}, Lcom/sec/internal/ims/rcs/util/RcsUtils$UiUtils;->createRcsPdnPrefClickListener(Landroid/content/Context;ZI)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v2

    .line 375
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 380
    nop

    .line 381
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060015

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 382
    const/4 v2, 0x0

    invoke-static {p0, p1, v2}, Lcom/sec/internal/ims/rcs/util/RcsUtils$UiUtils;->createRcsPdnPrefClickListener(Landroid/content/Context;ZI)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v3

    .line 380
    invoke-virtual {v0, v1, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 385
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    sput-object v1, Lcom/sec/internal/ims/rcs/util/RcsUtils$UiUtils;->mRcsPdnDialog:Landroid/app/AlertDialog;

    .line 386
    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v3, 0x7f6

    invoke-virtual {v1, v3}, Landroid/view/Window;->setType(I)V

    .line 387
    sget-object v1, Lcom/sec/internal/ims/rcs/util/RcsUtils$UiUtils;->mRcsPdnDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const v3, 0x10100

    invoke-virtual {v1, v3}, Landroid/view/Window;->addFlags(I)V

    .line 389
    sget-object v1, Lcom/sec/internal/ims/rcs/util/RcsUtils$UiUtils;->mRcsPdnDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 390
    sget-object v1, Lcom/sec/internal/ims/rcs/util/RcsUtils$UiUtils;->mRcsPdnDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setCancelable(Z)V

    .line 391
    sget-object v1, Lcom/sec/internal/ims/rcs/util/RcsUtils$UiUtils;->mRcsPdnDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 392
    return-void

    .line 355
    .end local v0    # "builder":Landroid/app/AlertDialog$Builder;
    :cond_3
    :goto_1
    return-void
.end method
