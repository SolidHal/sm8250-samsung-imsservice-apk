.class public final synthetic Lcom/sec/internal/ims/servicemodules/im/-$$Lambda$ImSessionProcessor$QXkEyhRrUzoaHbN3VVefQ6CTgZQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;

.field public final synthetic f$1:Ljava/util/List;

.field public final synthetic f$2:Z

.field public final synthetic f$3:Z


# direct methods
.method public synthetic constructor <init>(Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;Ljava/util/List;ZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/-$$Lambda$ImSessionProcessor$QXkEyhRrUzoaHbN3VVefQ6CTgZQ;->f$0:Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;

    iput-object p2, p0, Lcom/sec/internal/ims/servicemodules/im/-$$Lambda$ImSessionProcessor$QXkEyhRrUzoaHbN3VVefQ6CTgZQ;->f$1:Ljava/util/List;

    iput-boolean p3, p0, Lcom/sec/internal/ims/servicemodules/im/-$$Lambda$ImSessionProcessor$QXkEyhRrUzoaHbN3VVefQ6CTgZQ;->f$2:Z

    iput-boolean p4, p0, Lcom/sec/internal/ims/servicemodules/im/-$$Lambda$ImSessionProcessor$QXkEyhRrUzoaHbN3VVefQ6CTgZQ;->f$3:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/-$$Lambda$ImSessionProcessor$QXkEyhRrUzoaHbN3VVefQ6CTgZQ;->f$0:Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/-$$Lambda$ImSessionProcessor$QXkEyhRrUzoaHbN3VVefQ6CTgZQ;->f$1:Ljava/util/List;

    iget-boolean v2, p0, Lcom/sec/internal/ims/servicemodules/im/-$$Lambda$ImSessionProcessor$QXkEyhRrUzoaHbN3VVefQ6CTgZQ;->f$2:Z

    iget-boolean v3, p0, Lcom/sec/internal/ims/servicemodules/im/-$$Lambda$ImSessionProcessor$QXkEyhRrUzoaHbN3VVefQ6CTgZQ;->f$3:Z

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->lambda$closeChat$17$ImSessionProcessor(Ljava/util/List;ZZ)V

    return-void
.end method
