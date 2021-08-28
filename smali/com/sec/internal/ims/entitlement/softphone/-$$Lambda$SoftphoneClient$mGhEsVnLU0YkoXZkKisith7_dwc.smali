.class public final synthetic Lcom/sec/internal/ims/entitlement/softphone/-$$Lambda$SoftphoneClient$mGhEsVnLU0YkoXZkKisith7_dwc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/sec/internal/ims/entitlement/util/GeolocationUpdateFlow$LocationUpdateListener;


# instance fields
.field public final synthetic f$0:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/internal/ims/entitlement/softphone/-$$Lambda$SoftphoneClient$mGhEsVnLU0YkoXZkKisith7_dwc;->f$0:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;

    return-void
.end method


# virtual methods
.method public final onAddressObtained(Landroid/location/Address;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/-$$Lambda$SoftphoneClient$mGhEsVnLU0YkoXZkKisith7_dwc;->f$0:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->lambda$checkAutoRegistrationCondition$0$SoftphoneClient(Landroid/location/Address;)V

    return-void
.end method
