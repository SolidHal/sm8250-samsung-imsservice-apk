.class Lcom/sec/internal/ims/servicemodules/im/FtMessage$2;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "FtMessage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/servicemodules/im/FtMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/servicemodules/im/FtMessage;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/servicemodules/im/FtMessage;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sec/internal/ims/servicemodules/im/FtMessage;

    .line 223
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/FtMessage$2;->this$0:Lcom/sec/internal/ims/servicemodules/im/FtMessage;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAvailable(Landroid/net/Network;)V
    .locals 2
    .param p1, "network"    # Landroid/net/Network;

    .line 226
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ConnectivityManager.NetworkCallback: onAvailable"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/FtMessage$2;->this$0:Lcom/sec/internal/ims/servicemodules/im/FtMessage;

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->access$100(Lcom/sec/internal/ims/servicemodules/im/FtMessage;Landroid/net/Network;Z)V

    .line 228
    return-void
.end method

.method public onLost(Landroid/net/Network;)V
    .locals 2
    .param p1, "network"    # Landroid/net/Network;

    .line 232
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ConnectivityManager.NetworkCallback: onLost"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/FtMessage$2;->this$0:Lcom/sec/internal/ims/servicemodules/im/FtMessage;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->access$100(Lcom/sec/internal/ims/servicemodules/im/FtMessage;Landroid/net/Network;Z)V

    .line 234
    return-void
.end method
