.class Lcom/sec/internal/ims/servicemodules/ServiceModuleManager$1;
.super Landroid/database/ContentObserver;
.source "ServiceModuleManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;
    .param p2, "arg0"    # Landroid/os/Handler;

    .line 189
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager$1;->this$0:Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 3
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .line 192
    invoke-static {p2}, Lcom/sec/internal/helper/UriUtil;->getSimSlotFromUri(Landroid/net/Uri;)I

    move-result v0

    .line 193
    .local v0, "phoneId":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onChange["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]: config changed : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ServiceModuleManager"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    invoke-virtual {p2}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 196
    invoke-virtual {p2}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v1

    .line 197
    .local v1, "dmUri":Ljava/lang/String;
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager$1;->this$0:Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;

    invoke-virtual {v2, v1, v0}, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->notifyConfigChanged(Ljava/lang/String;I)V

    .line 199
    .end local v1    # "dmUri":Ljava/lang/String;
    :cond_0
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager$1;->this$0:Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, p2}, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->sendMessage(Landroid/os/Message;)Z

    .line 200
    return-void
.end method
