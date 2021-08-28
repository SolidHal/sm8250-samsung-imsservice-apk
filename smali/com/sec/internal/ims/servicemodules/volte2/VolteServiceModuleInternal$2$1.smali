.class Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal$2$1;
.super Lcom/sec/ims/ImsManager$EpdgListener;
.source "VolteServiceModuleInternal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal$2;->onEpdgServiceConnected()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal$2;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal$2;)V
    .locals 0
    .param p1, "this$1"    # Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal$2;

    .line 836
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal$2$1;->this$1:Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal$2;

    invoke-direct {p0}, Lcom/sec/ims/ImsManager$EpdgListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onEpdgReleaseCall(I)V
    .locals 4
    .param p1, "phoneId"    # I

    .line 839
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onEpdgReleaseCall, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 840
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal$2$1;->this$1:Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal$2;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal$2;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal$2$1;->this$1:Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal$2;

    iget-object v1, v1, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal$2;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;

    const/16 v2, 0x14

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->sendMessage(Landroid/os/Message;)Z

    .line 841
    return-void
.end method
