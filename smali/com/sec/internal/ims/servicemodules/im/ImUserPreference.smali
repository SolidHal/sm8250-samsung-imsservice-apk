.class public Lcom/sec/internal/ims/servicemodules/im/ImUserPreference;
.super Ljava/lang/Object;
.source "ImUserPreference.java"


# static fields
.field private static final FT_AUTO_ACCEPT_SIM1:Ljava/lang/String; = "FT_AUTO_ACCEPT"

.field private static final FT_AUTO_ACCEPT_SIM2:Ljava/lang/String; = "FT_AUTO_ACCEPT_SIM2"

.field private static final SHARED_PREFS_NAME:Ljava/lang/String; = "im_user_prefs"

.field private static final USER_ALIAS:Ljava/lang/String; = "USER_ALIAS"

.field private static sInstance:Lcom/sec/internal/ims/servicemodules/im/ImUserPreference;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    return-void
.end method

.method private getFtAutAcceptPrefByPhoneId(I)Ljava/lang/String;
    .locals 1
    .param p1, "phoneId"    # I

    .line 101
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const-string v0, "FT_AUTO_ACCEPT_SIM2"

    goto :goto_0

    :cond_0
    const-string v0, "FT_AUTO_ACCEPT"

    :goto_0
    return-object v0
.end method

.method public static getInstance()Lcom/sec/internal/ims/servicemodules/im/ImUserPreference;
    .locals 1

    .line 38
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImUserPreference;->sInstance:Lcom/sec/internal/ims/servicemodules/im/ImUserPreference;

    if-nez v0, :cond_0

    .line 39
    new-instance v0, Lcom/sec/internal/ims/servicemodules/im/ImUserPreference;

    invoke-direct {v0}, Lcom/sec/internal/ims/servicemodules/im/ImUserPreference;-><init>()V

    sput-object v0, Lcom/sec/internal/ims/servicemodules/im/ImUserPreference;->sInstance:Lcom/sec/internal/ims/servicemodules/im/ImUserPreference;

    .line 41
    :cond_0
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImUserPreference;->sInstance:Lcom/sec/internal/ims/servicemodules/im/ImUserPreference;

    return-object v0
.end method

.method private getInt(Landroid/content/Context;Ljava/lang/String;I)I
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "def"    # I

    .line 89
    const-string v0, "im_user_prefs"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 91
    .local v0, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v0, p2, p3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method private getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "def"    # Ljava/lang/String;

    .line 95
    const-string v0, "im_user_prefs"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 97
    .local v0, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v0, p2, p3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private persist(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "value"    # I

    .line 73
    const-string v0, "im_user_prefs"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 75
    .local v0, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 76
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 77
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 78
    return-void
.end method

.method private persist(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .line 81
    const-string v0, "im_user_prefs"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 83
    .local v0, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 84
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 85
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 86
    return-void
.end method


# virtual methods
.method public getFtAutAccept(Landroid/content/Context;)I
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 53
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/ImUserPreference;->getFtAutAcceptPrefByPhoneId(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, -0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImUserPreference;->getInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getFtAutAccept(Landroid/content/Context;I)I
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "phoneId"    # I

    .line 57
    invoke-static {}, Lcom/sec/internal/ims/rcs/util/RcsUtils$DualRcs;->isDualRcsSettings()Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    .line 58
    invoke-direct {p0, p2}, Lcom/sec/internal/ims/servicemodules/im/ImUserPreference;->getFtAutAcceptPrefByPhoneId(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImUserPreference;->getInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    return v0

    .line 60
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/ImUserPreference;->getFtAutAcceptPrefByPhoneId(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImUserPreference;->getInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getUserAlias(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 69
    const-string v0, "USER_ALIAS"

    const-string v1, ""

    invoke-direct {p0, p1, v0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImUserPreference;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setFtAutAccept(Landroid/content/Context;II)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "phoneId"    # I
    .param p3, "accept"    # I

    .line 45
    invoke-static {}, Lcom/sec/internal/ims/rcs/util/RcsUtils$DualRcs;->isDualRcsSettings()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 46
    invoke-direct {p0, p2}, Lcom/sec/internal/ims/servicemodules/im/ImUserPreference;->getFtAutAcceptPrefByPhoneId(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0, p3}, Lcom/sec/internal/ims/servicemodules/im/ImUserPreference;->persist(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_0

    .line 48
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/ImUserPreference;->getFtAutAcceptPrefByPhoneId(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0, p3}, Lcom/sec/internal/ims/servicemodules/im/ImUserPreference;->persist(Landroid/content/Context;Ljava/lang/String;I)V

    .line 50
    :goto_0
    return-void
.end method

.method public setUserAlias(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "userAlias"    # Ljava/lang/String;

    .line 65
    const-string v0, "USER_ALIAS"

    invoke-direct {p0, p1, v0, p2}, Lcom/sec/internal/ims/servicemodules/im/ImUserPreference;->persist(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    return-void
.end method
