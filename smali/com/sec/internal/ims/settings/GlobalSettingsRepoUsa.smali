.class public Lcom/sec/internal/ims/settings/GlobalSettingsRepoUsa;
.super Lcom/sec/internal/ims/settings/GlobalSettingsRepoBase;
.source "GlobalSettingsRepoUsa.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "phoneId"    # I

    .line 22
    invoke-direct {p0, p1, p2}, Lcom/sec/internal/ims/settings/GlobalSettingsRepoBase;-><init>(Landroid/content/Context;I)V

    .line 23
    return-void
.end method


# virtual methods
.method protected needResetVolteAsDefault(II)Z
    .locals 1
    .param p1, "prevVolteDefaultEnabled"    # I
    .param p2, "newVolteDefaultEnabled"    # I

    .line 27
    if-eq p1, p2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected updateSystemSettings(Lcom/sec/internal/constants/Mno;Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 8
    .param p1, "mno"    # Lcom/sec/internal/constants/Mno;
    .param p2, "mnoinfo"    # Landroid/content/ContentValues;
    .param p3, "newMnoname"    # Ljava/lang/String;
    .param p4, "prevMnoname"    # Ljava/lang/String;
    .param p5, "spValueVolte"    # I
    .param p6, "spValueVideo"    # I

    .line 32
    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/settings/GlobalSettingsRepoUsa;->isNeedToBeSetVoLTE(Landroid/content/ContentValues;)Z

    move-result v0

    .line 34
    .local v0, "isNeedToSetVoLTE":Z
    iget-boolean v1, p0, Lcom/sec/internal/ims/settings/GlobalSettingsRepoUsa;->mCscChanged:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/sec/internal/constants/Mno;->TMOUS:Lcom/sec/internal/constants/Mno;

    if-ne p1, v1, :cond_0

    .line 35
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/internal/ims/settings/GlobalSettingsRepoUsa;->mCscChanged:Z

    .line 36
    iget-object v1, p0, Lcom/sec/internal/ims/settings/GlobalSettingsRepoUsa;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    const-string v2, "TMO requires forced enable voicecall_type after FOTA."

    invoke-virtual {v1, v2}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 37
    const/4 v0, 0x1

    .line 38
    const/4 p5, 0x0

    .line 41
    :cond_0
    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/settings/GlobalSettingsRepoUsa;->isNeedToBeSetViLTE(Landroid/content/ContentValues;)Z

    move-result v4

    const/4 v6, 0x0

    const/4 v7, -0x1

    move-object v1, p0

    move v2, v0

    move v3, p5

    move v5, p6

    invoke-virtual/range {v1 .. v7}, Lcom/sec/internal/ims/settings/GlobalSettingsRepoUsa;->setSettingsFromSp(ZIZIZI)V

    .line 42
    return-void
.end method
