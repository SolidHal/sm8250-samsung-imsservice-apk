.class public Lcom/sec/internal/ims/servicemodules/im/strategy/KtUPStrategy;
.super Lcom/sec/internal/ims/servicemodules/im/strategy/SecUPStrategy;
.source "KtUPStrategy.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 13
    const-class v0, Lcom/sec/internal/ims/servicemodules/im/strategy/KtUPStrategy;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/servicemodules/im/strategy/KtUPStrategy;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "phoneId"    # I

    .line 16
    invoke-direct {p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/im/strategy/SecUPStrategy;-><init>(Landroid/content/Context;I)V

    .line 17
    return-void
.end method


# virtual methods
.method public isBMode(Z)Z
    .locals 10
    .param p1, "checkSettingOnly"    # Z

    .line 22
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/KtUPStrategy;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "two_register"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 23
    .local v0, "isKtTwoPhoneServiceRegistered":I
    sget-object v1, Lcom/sec/internal/ims/servicemodules/im/strategy/KtUPStrategy;->TAG:Ljava/lang/String;

    iget v3, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/KtUPStrategy;->mPhoneId:I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isKtTwoPhoneServiceRegistered: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v3, v4}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 25
    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 26
    return v2

    .line 27
    :cond_0
    if-ne v0, v1, :cond_1

    if-eqz p1, :cond_1

    .line 28
    return v1

    .line 31
    :cond_1
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/KtUPStrategy;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "user"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/UserManager;

    .line 32
    .local v3, "userManager":Landroid/os/UserManager;
    invoke-static {v3}, Lcom/sec/ims/extensions/Extensions$UserManagerRef;->getUsers(Landroid/os/UserManager;)Ljava/util/List;

    move-result-object v4

    .line 34
    .local v4, "userInfos":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    if-eqz v4, :cond_3

    .line 35
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_3

    .line 36
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    .line 37
    .local v6, "nowUser":Ljava/lang/Object;
    invoke-static {v6}, Lcom/sec/ims/extensions/Extensions$UserInfo;->isBMode(Ljava/lang/Object;)Z

    move-result v7

    .line 38
    .local v7, "isBMode":Z
    if-eqz v7, :cond_2

    .line 39
    invoke-static {v6}, Lcom/sec/ims/extensions/Extensions$UserInfo;->getUserId(Ljava/lang/Object;)I

    move-result v8

    invoke-static {}, Lcom/sec/ims/extensions/Extensions$ActivityManager;->getCurrentUser()I

    move-result v9

    if-ne v8, v9, :cond_2

    .line 40
    sget-object v2, Lcom/sec/internal/ims/servicemodules/im/strategy/KtUPStrategy;->TAG:Ljava/lang/String;

    iget v8, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/KtUPStrategy;->mPhoneId:I

    const-string v9, "Current user set BMode."

    invoke-static {v2, v8, v9}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 41
    return v1

    .line 35
    .end local v6    # "nowUser":Ljava/lang/Object;
    .end local v7    # "isBMode":Z
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 46
    .end local v5    # "i":I
    :cond_3
    return v2
.end method
