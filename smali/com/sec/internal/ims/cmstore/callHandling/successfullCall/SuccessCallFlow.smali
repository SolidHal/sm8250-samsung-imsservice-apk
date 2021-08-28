.class public Lcom/sec/internal/ims/cmstore/callHandling/successfullCall/SuccessCallFlow;
.super Ljava/lang/Object;
.source "SuccessCallFlow.java"


# instance fields
.field mFlow:Ljava/lang/String;

.field mProvisionEventType:Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;)V
    .locals 1
    .param p1, "flow"    # Ljava/lang/String;
    .param p2, "event"    # Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/callHandling/successfullCall/SuccessCallFlow;->mFlow:Ljava/lang/String;

    .line 8
    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/callHandling/successfullCall/SuccessCallFlow;->mProvisionEventType:Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;

    .line 11
    iput-object p1, p0, Lcom/sec/internal/ims/cmstore/callHandling/successfullCall/SuccessCallFlow;->mFlow:Ljava/lang/String;

    .line 12
    iput-object p2, p0, Lcom/sec/internal/ims/cmstore/callHandling/successfullCall/SuccessCallFlow;->mProvisionEventType:Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;

    .line 13
    return-void
.end method
