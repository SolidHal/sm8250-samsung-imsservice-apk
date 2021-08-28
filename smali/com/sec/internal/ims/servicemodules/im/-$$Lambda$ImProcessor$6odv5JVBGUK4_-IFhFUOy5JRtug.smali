.class public final synthetic Lcom/sec/internal/ims/servicemodules/im/-$$Lambda$ImProcessor$6odv5JVBGUK4_-IFhFUOy5JRtug;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/sec/internal/ims/servicemodules/im/ImProcessor;

.field public final synthetic f$1:I

.field public final synthetic f$2:Lcom/sec/internal/ims/servicemodules/im/ImSession;

.field public final synthetic f$3:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/internal/ims/servicemodules/im/ImProcessor;ILcom/sec/internal/ims/servicemodules/im/ImSession;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/-$$Lambda$ImProcessor$6odv5JVBGUK4_-IFhFUOy5JRtug;->f$0:Lcom/sec/internal/ims/servicemodules/im/ImProcessor;

    iput p2, p0, Lcom/sec/internal/ims/servicemodules/im/-$$Lambda$ImProcessor$6odv5JVBGUK4_-IFhFUOy5JRtug;->f$1:I

    iput-object p3, p0, Lcom/sec/internal/ims/servicemodules/im/-$$Lambda$ImProcessor$6odv5JVBGUK4_-IFhFUOy5JRtug;->f$2:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iput-object p4, p0, Lcom/sec/internal/ims/servicemodules/im/-$$Lambda$ImProcessor$6odv5JVBGUK4_-IFhFUOy5JRtug;->f$3:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/-$$Lambda$ImProcessor$6odv5JVBGUK4_-IFhFUOy5JRtug;->f$0:Lcom/sec/internal/ims/servicemodules/im/ImProcessor;

    iget v1, p0, Lcom/sec/internal/ims/servicemodules/im/-$$Lambda$ImProcessor$6odv5JVBGUK4_-IFhFUOy5JRtug;->f$1:I

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/-$$Lambda$ImProcessor$6odv5JVBGUK4_-IFhFUOy5JRtug;->f$2:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/-$$Lambda$ImProcessor$6odv5JVBGUK4_-IFhFUOy5JRtug;->f$3:Ljava/util/List;

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/internal/ims/servicemodules/im/ImProcessor;->lambda$onProcessPendingMessages$7$ImProcessor(ILcom/sec/internal/ims/servicemodules/im/ImSession;Ljava/util/List;)V

    return-void
.end method
