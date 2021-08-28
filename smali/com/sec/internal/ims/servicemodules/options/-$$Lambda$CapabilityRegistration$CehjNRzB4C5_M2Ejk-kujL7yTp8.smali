.class public final synthetic Lcom/sec/internal/ims/servicemodules/options/-$$Lambda$CapabilityRegistration$CehjNRzB4C5_M2Ejk-kujL7yTp8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/sec/internal/ims/servicemodules/options/CapabilityRegistration;

.field public final synthetic f$1:Lcom/sec/ims/ImsRegistration;

.field public final synthetic f$2:Ljava/util/Map;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/internal/ims/servicemodules/options/CapabilityRegistration;Lcom/sec/ims/ImsRegistration;Ljava/util/Map;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/options/-$$Lambda$CapabilityRegistration$CehjNRzB4C5_M2Ejk-kujL7yTp8;->f$0:Lcom/sec/internal/ims/servicemodules/options/CapabilityRegistration;

    iput-object p2, p0, Lcom/sec/internal/ims/servicemodules/options/-$$Lambda$CapabilityRegistration$CehjNRzB4C5_M2Ejk-kujL7yTp8;->f$1:Lcom/sec/ims/ImsRegistration;

    iput-object p3, p0, Lcom/sec/internal/ims/servicemodules/options/-$$Lambda$CapabilityRegistration$CehjNRzB4C5_M2Ejk-kujL7yTp8;->f$2:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/-$$Lambda$CapabilityRegistration$CehjNRzB4C5_M2Ejk-kujL7yTp8;->f$0:Lcom/sec/internal/ims/servicemodules/options/CapabilityRegistration;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/options/-$$Lambda$CapabilityRegistration$CehjNRzB4C5_M2Ejk-kujL7yTp8;->f$1:Lcom/sec/ims/ImsRegistration;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/options/-$$Lambda$CapabilityRegistration$CehjNRzB4C5_M2Ejk-kujL7yTp8;->f$2:Ljava/util/Map;

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/ims/servicemodules/options/CapabilityRegistration;->lambda$processDeregistered$0$CapabilityRegistration(Lcom/sec/ims/ImsRegistration;Ljava/util/Map;)V

    return-void
.end method
