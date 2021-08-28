.class Lcom/sec/internal/ims/core/GeolocationController$GeolocationListener;
.super Ljava/lang/Object;
.source "GeolocationController.java"

# interfaces
.implements Landroid/location/LocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/core/GeolocationController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GeolocationListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/core/GeolocationController;


# direct methods
.method private constructor <init>(Lcom/sec/internal/ims/core/GeolocationController;)V
    .locals 0

    .line 549
    iput-object p1, p0, Lcom/sec/internal/ims/core/GeolocationController$GeolocationListener;->this$0:Lcom/sec/internal/ims/core/GeolocationController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/internal/ims/core/GeolocationController;Lcom/sec/internal/ims/core/GeolocationController$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sec/internal/ims/core/GeolocationController;
    .param p2, "x1"    # Lcom/sec/internal/ims/core/GeolocationController$1;

    .line 549
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/GeolocationController$GeolocationListener;-><init>(Lcom/sec/internal/ims/core/GeolocationController;)V

    return-void
.end method


# virtual methods
.method public onLocationChanged(Landroid/location/Location;)V
    .locals 4
    .param p1, "location"    # Landroid/location/Location;

    .line 552
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onLocationChanged : location = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GeolocationCon"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 554
    if-eqz p1, :cond_0

    .line 556
    :try_start_0
    const-string v0, "onLocationChanged : removing location listener"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 557
    const v0, 0x30000035

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 558
    iget-object v0, p0, Lcom/sec/internal/ims/core/GeolocationController$GeolocationListener;->this$0:Lcom/sec/internal/ims/core/GeolocationController;

    invoke-static {v0, p1}, Lcom/sec/internal/ims/core/GeolocationController;->access$500(Lcom/sec/internal/ims/core/GeolocationController;Landroid/location/Location;)V

    .line 559
    iget-object v0, p0, Lcom/sec/internal/ims/core/GeolocationController$GeolocationListener;->this$0:Lcom/sec/internal/ims/core/GeolocationController;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/sec/internal/ims/core/GeolocationController;->sendEmptyMessage(I)Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 562
    goto :goto_0

    .line 560
    :catch_0
    move-exception v0

    .line 561
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onLocationChanged ex: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 564
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :cond_0
    :goto_0
    return-void
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 0
    .param p1, "var1"    # Ljava/lang/String;

    .line 573
    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 0
    .param p1, "var1"    # Ljava/lang/String;

    .line 570
    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0
    .param p1, "var1"    # Ljava/lang/String;
    .param p2, "var2"    # I
    .param p3, "var3"    # Landroid/os/Bundle;

    .line 567
    return-void
.end method
