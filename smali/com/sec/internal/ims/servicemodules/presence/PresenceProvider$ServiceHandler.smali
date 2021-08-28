.class final Lcom/sec/internal/ims/servicemodules/presence/PresenceProvider$ServiceHandler;
.super Landroid/os/Handler;
.source "PresenceProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/servicemodules/presence/PresenceProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ServiceHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/servicemodules/presence/PresenceProvider;


# direct methods
.method public constructor <init>(Lcom/sec/internal/ims/servicemodules/presence/PresenceProvider;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .line 102
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceProvider$ServiceHandler;->this$0:Lcom/sec/internal/ims/servicemodules/presence/PresenceProvider;

    .line 103
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 104
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .line 108
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x6a

    if-eq v0, v1, :cond_0

    .line 113
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "could not match any message type:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PresenceProvider"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 110
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceProvider$ServiceHandler;->this$0:Lcom/sec/internal/ims/servicemodules/presence/PresenceProvider;

    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/presence/PresenceProvider;->access$000(Lcom/sec/internal/ims/servicemodules/presence/PresenceProvider;)V

    .line 111
    nop

    .line 116
    :goto_0
    return-void
.end method
