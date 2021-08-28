.class Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController$1;
.super Landroid/database/ContentObserver;
.source "ProvisionController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->registerConfigurationObserver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;
    .param p2, "arg0"    # Landroid/os/Handler;

    .line 179
    iput-object p1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 3
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .line 182
    invoke-super {p0, p1, p2}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;)V

    .line 184
    sget-object v0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "changed in DB. uri="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "root/application/1/serviceproviderext/nc_url"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 186
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->access$000(Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 191
    sget-object v0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->TAG:Ljava/lang/String;

    const-string v1, "nc host changed, send REQ_SESSION_GEN event"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 193
    :cond_0
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "root/application/1/serviceproviderext/nms_url"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 194
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->access$100(Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 196
    sget-object v0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->TAG:Ljava/lang/String;

    const-string v1, "nms host changed, send REQ_SESSION_GEN event"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    :cond_1
    :goto_0
    return-void
.end method
