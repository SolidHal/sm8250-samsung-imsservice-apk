.class public final synthetic Lcom/sec/internal/ims/servicemodules/im/-$$Lambda$ImProcessor$U90sO2ulYbfpgvmY9i54-uFBD1U;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/sec/internal/ims/servicemodules/im/ImProcessor;

.field public final synthetic f$1:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/internal/ims/servicemodules/im/ImProcessor;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/-$$Lambda$ImProcessor$U90sO2ulYbfpgvmY9i54-uFBD1U;->f$0:Lcom/sec/internal/ims/servicemodules/im/ImProcessor;

    iput-object p2, p0, Lcom/sec/internal/ims/servicemodules/im/-$$Lambda$ImProcessor$U90sO2ulYbfpgvmY9i54-uFBD1U;->f$1:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/-$$Lambda$ImProcessor$U90sO2ulYbfpgvmY9i54-uFBD1U;->f$0:Lcom/sec/internal/ims/servicemodules/im/ImProcessor;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/-$$Lambda$ImProcessor$U90sO2ulYbfpgvmY9i54-uFBD1U;->f$1:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImProcessor;->lambda$getLastSentMessagesStatus$6$ImProcessor(Ljava/util/List;)V

    return-void
.end method
