.class public final synthetic Lcom/sec/internal/ims/servicemodules/im/-$$Lambda$ImSessionProcessor$6islrKrchLzbUWfZKcGEQhfyVAY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;Ljava/lang/String;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/-$$Lambda$ImSessionProcessor$6islrKrchLzbUWfZKcGEQhfyVAY;->f$0:Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;

    iput-object p2, p0, Lcom/sec/internal/ims/servicemodules/im/-$$Lambda$ImSessionProcessor$6islrKrchLzbUWfZKcGEQhfyVAY;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lcom/sec/internal/ims/servicemodules/im/-$$Lambda$ImSessionProcessor$6islrKrchLzbUWfZKcGEQhfyVAY;->f$2:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/-$$Lambda$ImSessionProcessor$6islrKrchLzbUWfZKcGEQhfyVAY;->f$0:Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/-$$Lambda$ImSessionProcessor$6islrKrchLzbUWfZKcGEQhfyVAY;->f$1:Ljava/lang/String;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/-$$Lambda$ImSessionProcessor$6islrKrchLzbUWfZKcGEQhfyVAY;->f$2:Ljava/util/List;

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->lambda$addParticipants$2$ImSessionProcessor(Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method
