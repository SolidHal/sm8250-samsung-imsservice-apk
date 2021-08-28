.class Lcom/sec/internal/ims/rcs/util/RcsUtils$UiUtils$1;
.super Ljava/lang/Object;
.source "RcsUtils.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/internal/ims/rcs/util/RcsUtils$UiUtils;->createRcsPdnPrefClickListener(Landroid/content/Context;ZI)Landroid/content/DialogInterface$OnClickListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$isRoaming:Z

.field final synthetic val$pref:I


# direct methods
.method constructor <init>(IZLandroid/content/Context;)V
    .locals 0

    .line 323
    iput p1, p0, Lcom/sec/internal/ims/rcs/util/RcsUtils$UiUtils$1;->val$pref:I

    iput-boolean p2, p0, Lcom/sec/internal/ims/rcs/util/RcsUtils$UiUtils$1;->val$isRoaming:Z

    iput-object p3, p0, Lcom/sec/internal/ims/rcs/util/RcsUtils$UiUtils$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .line 326
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 328
    invoke-static {}, Lcom/sec/internal/ims/rcs/util/RcsUtils;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "User preference for RCS PDN: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/sec/internal/ims/rcs/util/RcsUtils$UiUtils$1;->val$pref:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " (roaming: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/sec/internal/ims/rcs/util/RcsUtils$UiUtils$1;->val$isRoaming:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getDefaultPhoneId()I

    move-result v0

    .line 331
    .local v0, "phoneId":I
    iget-object v1, p0, Lcom/sec/internal/ims/rcs/util/RcsUtils$UiUtils$1;->val$context:Landroid/content/Context;

    iget-boolean v2, p0, Lcom/sec/internal/ims/rcs/util/RcsUtils$UiUtils$1;->val$isRoaming:Z

    iget v3, p0, Lcom/sec/internal/ims/rcs/util/RcsUtils$UiUtils$1;->val$pref:I

    invoke-static {v1, v0, v2, v3}, Lcom/sec/internal/ims/rcs/util/RcsUtils$UiUtils;->access$100(Landroid/content/Context;IZI)V

    .line 332
    iget v1, p0, Lcom/sec/internal/ims/rcs/util/RcsUtils$UiUtils$1;->val$pref:I

    if-eqz v1, :cond_0

    .line 333
    const/4 v1, 0x1

    invoke-static {v1}, Lcom/sec/internal/ims/rcs/util/RcsUtils$UiUtils;->access$202(Z)Z

    .line 334
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getRegistrationManager()Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    move-result-object v1

    .line 335
    .local v1, "regiMgr":Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;
    invoke-interface {v1, v0}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->requestTryRegister(I)V

    .line 337
    .end local v1    # "regiMgr":Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;
    :cond_0
    return-void
.end method
