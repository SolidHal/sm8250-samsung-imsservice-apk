.class public final synthetic Lcom/sec/internal/ims/servicemodules/im/-$$Lambda$FtProcessor$338HdMOIMai1P3XdpYNAnSyrp6Y;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/sec/internal/ims/servicemodules/im/FtProcessor;

.field public final synthetic f$1:Lcom/sec/internal/ims/servicemodules/im/FtMessage;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/internal/ims/servicemodules/im/FtProcessor;Lcom/sec/internal/ims/servicemodules/im/FtMessage;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/-$$Lambda$FtProcessor$338HdMOIMai1P3XdpYNAnSyrp6Y;->f$0:Lcom/sec/internal/ims/servicemodules/im/FtProcessor;

    iput-object p2, p0, Lcom/sec/internal/ims/servicemodules/im/-$$Lambda$FtProcessor$338HdMOIMai1P3XdpYNAnSyrp6Y;->f$1:Lcom/sec/internal/ims/servicemodules/im/FtMessage;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/-$$Lambda$FtProcessor$338HdMOIMai1P3XdpYNAnSyrp6Y;->f$0:Lcom/sec/internal/ims/servicemodules/im/FtProcessor;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/-$$Lambda$FtProcessor$338HdMOIMai1P3XdpYNAnSyrp6Y;->f$1:Lcom/sec/internal/ims/servicemodules/im/FtMessage;

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->lambda$onSendDeliveredNotification$1$FtProcessor(Lcom/sec/internal/ims/servicemodules/im/FtMessage;)V

    return-void
.end method
