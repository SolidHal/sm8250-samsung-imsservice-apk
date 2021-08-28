.class Lcom/sec/internal/ims/entitlement/util/GeolocationUpdateFlow$NLPLocationListener;
.super Ljava/lang/Object;
.source "GeolocationUpdateFlow.java"

# interfaces
.implements Landroid/location/LocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/entitlement/util/GeolocationUpdateFlow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NLPLocationListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/entitlement/util/GeolocationUpdateFlow;


# direct methods
.method private constructor <init>(Lcom/sec/internal/ims/entitlement/util/GeolocationUpdateFlow;)V
    .locals 0

    .line 316
    iput-object p1, p0, Lcom/sec/internal/ims/entitlement/util/GeolocationUpdateFlow$NLPLocationListener;->this$0:Lcom/sec/internal/ims/entitlement/util/GeolocationUpdateFlow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/internal/ims/entitlement/util/GeolocationUpdateFlow;Lcom/sec/internal/ims/entitlement/util/GeolocationUpdateFlow$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sec/internal/ims/entitlement/util/GeolocationUpdateFlow;
    .param p2, "x1"    # Lcom/sec/internal/ims/entitlement/util/GeolocationUpdateFlow$1;

    .line 316
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/entitlement/util/GeolocationUpdateFlow$NLPLocationListener;-><init>(Lcom/sec/internal/ims/entitlement/util/GeolocationUpdateFlow;)V

    return-void
.end method


# virtual methods
.method public onLocationChanged(Landroid/location/Location;)V
    .locals 2
    .param p1, "location"    # Landroid/location/Location;

    .line 319
    invoke-static {}, Lcom/sec/internal/ims/entitlement/util/GeolocationUpdateFlow;->access$500()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onLocationChanged"

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 320
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/util/GeolocationUpdateFlow$NLPLocationListener;->this$0:Lcom/sec/internal/ims/entitlement/util/GeolocationUpdateFlow;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/entitlement/util/GeolocationUpdateFlow;->removeMessages(I)V

    .line 321
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/util/GeolocationUpdateFlow$NLPLocationListener;->this$0:Lcom/sec/internal/ims/entitlement/util/GeolocationUpdateFlow;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/entitlement/util/GeolocationUpdateFlow;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/entitlement/util/GeolocationUpdateFlow;->sendMessage(Landroid/os/Message;)Z

    .line 322
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/util/GeolocationUpdateFlow$NLPLocationListener;->this$0:Lcom/sec/internal/ims/entitlement/util/GeolocationUpdateFlow;

    invoke-static {v0}, Lcom/sec/internal/ims/entitlement/util/GeolocationUpdateFlow;->access$700(Lcom/sec/internal/ims/entitlement/util/GeolocationUpdateFlow;)V

    .line 323
    return-void
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 0
    .param p1, "arg0"    # Ljava/lang/String;

    .line 327
    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 0
    .param p1, "arg0"    # Ljava/lang/String;

    .line 331
    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0
    .param p1, "arg0"    # Ljava/lang/String;
    .param p2, "arg1"    # I
    .param p3, "arg2"    # Landroid/os/Bundle;

    .line 335
    return-void
.end method
