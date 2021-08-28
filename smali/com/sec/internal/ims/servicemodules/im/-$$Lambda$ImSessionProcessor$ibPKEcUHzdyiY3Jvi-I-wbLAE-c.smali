.class public final synthetic Lcom/sec/internal/ims/servicemodules/im/-$$Lambda$ImSessionProcessor$ibPKEcUHzdyiY3Jvi-I-wbLAE-c;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;

.field public final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/-$$Lambda$ImSessionProcessor$ibPKEcUHzdyiY3Jvi-I-wbLAE-c;->f$0:Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;

    iput-object p2, p0, Lcom/sec/internal/ims/servicemodules/im/-$$Lambda$ImSessionProcessor$ibPKEcUHzdyiY3Jvi-I-wbLAE-c;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/-$$Lambda$ImSessionProcessor$ibPKEcUHzdyiY3Jvi-I-wbLAE-c;->f$0:Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/-$$Lambda$ImSessionProcessor$ibPKEcUHzdyiY3Jvi-I-wbLAE-c;->f$1:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->lambda$receiveDeliveryTimeout$22$ImSessionProcessor(Ljava/lang/String;)V

    return-void
.end method
