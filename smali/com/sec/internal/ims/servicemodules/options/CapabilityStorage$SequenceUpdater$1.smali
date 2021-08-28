.class Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage$SequenceUpdater$1;
.super Ljava/lang/Object;
.source "CapabilityStorage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage$SequenceUpdater;->tryApplybatch()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage$SequenceUpdater;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage$SequenceUpdater;)V
    .locals 0
    .param p1, "this$1"    # Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage$SequenceUpdater;

    .line 956
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage$SequenceUpdater$1;->this$1:Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage$SequenceUpdater;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 959
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage$SequenceUpdater$1;->this$1:Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage$SequenceUpdater;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage$SequenceUpdater;->operationList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 960
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage$SequenceUpdater$1;->this$1:Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage$SequenceUpdater;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage$SequenceUpdater;->this$0:Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;

    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;->access$100(Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;)I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "tryApplybatch: timeout, try remainder "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage$SequenceUpdater$1;->this$1:Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage$SequenceUpdater;

    iget-object v2, v2, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage$SequenceUpdater;->operationList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CapabilityStorage"

    invoke-static {v2, v0, v1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;ILjava/lang/String;)V

    .line 961
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage$SequenceUpdater$1;->this$1:Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage$SequenceUpdater;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage$SequenceUpdater;->timeout:Z

    .line 962
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage$SequenceUpdater$1;->this$1:Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage$SequenceUpdater;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage$SequenceUpdater;->this$0:Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;

    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;->access$500(Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;)Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage$SequenceUpdater;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage$SequenceUpdater;->tryApplybatch()V

    .line 964
    :cond_0
    return-void
.end method
