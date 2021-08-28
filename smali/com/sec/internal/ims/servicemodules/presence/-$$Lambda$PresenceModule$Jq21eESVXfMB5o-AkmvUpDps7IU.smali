.class public final synthetic Lcom/sec/internal/ims/servicemodules/presence/-$$Lambda$PresenceModule$Jq21eESVXfMB5o-AkmvUpDps7IU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;

.field public final synthetic f$1:Lcom/sec/ims/ImsRegistration;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;Lcom/sec/ims/ImsRegistration;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/presence/-$$Lambda$PresenceModule$Jq21eESVXfMB5o-AkmvUpDps7IU;->f$0:Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;

    iput-object p2, p0, Lcom/sec/internal/ims/servicemodules/presence/-$$Lambda$PresenceModule$Jq21eESVXfMB5o-AkmvUpDps7IU;->f$1:Lcom/sec/ims/ImsRegistration;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/presence/-$$Lambda$PresenceModule$Jq21eESVXfMB5o-AkmvUpDps7IU;->f$0:Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/presence/-$$Lambda$PresenceModule$Jq21eESVXfMB5o-AkmvUpDps7IU;->f$1:Lcom/sec/ims/ImsRegistration;

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->lambda$processDeregistered$3$PresenceModule(Lcom/sec/ims/ImsRegistration;)V

    return-void
.end method
