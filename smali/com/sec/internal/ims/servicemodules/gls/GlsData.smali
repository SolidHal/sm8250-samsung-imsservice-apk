.class public Lcom/sec/internal/ims/servicemodules/gls/GlsData;
.super Ljava/lang/Object;
.source "GlsData.java"


# instance fields
.field private final mDate:Ljava/util/Date;

.field private final mId:Ljava/lang/String;

.field private final mLabel:Ljava/lang/String;

.field private final mLocation:Landroid/location/Location;

.field private final mLocationType:Lcom/sec/internal/constants/ims/servicemodules/gls/LocationType;

.field private final mUri:Lcom/sec/ims/util/ImsUri;

.field private final mValidityDate:Lcom/sec/internal/ims/servicemodules/gls/GlsValidityTime;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/sec/ims/util/ImsUri;Landroid/location/Location;Lcom/sec/internal/constants/ims/servicemodules/gls/LocationType;Ljava/util/Date;Ljava/lang/String;Lcom/sec/internal/ims/servicemodules/gls/GlsValidityTime;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "uri"    # Lcom/sec/ims/util/ImsUri;
    .param p3, "location"    # Landroid/location/Location;
    .param p4, "locationType"    # Lcom/sec/internal/constants/ims/servicemodules/gls/LocationType;
    .param p5, "date"    # Ljava/util/Date;
    .param p6, "label"    # Ljava/lang/String;
    .param p7, "validityDate"    # Lcom/sec/internal/ims/servicemodules/gls/GlsValidityTime;

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/gls/GlsData;->mId:Ljava/lang/String;

    .line 22
    iput-object p2, p0, Lcom/sec/internal/ims/servicemodules/gls/GlsData;->mUri:Lcom/sec/ims/util/ImsUri;

    .line 23
    iput-object p3, p0, Lcom/sec/internal/ims/servicemodules/gls/GlsData;->mLocation:Landroid/location/Location;

    .line 24
    iput-object p4, p0, Lcom/sec/internal/ims/servicemodules/gls/GlsData;->mLocationType:Lcom/sec/internal/constants/ims/servicemodules/gls/LocationType;

    .line 25
    iput-object p5, p0, Lcom/sec/internal/ims/servicemodules/gls/GlsData;->mDate:Ljava/util/Date;

    .line 26
    iput-object p6, p0, Lcom/sec/internal/ims/servicemodules/gls/GlsData;->mLabel:Ljava/lang/String;

    .line 27
    iput-object p7, p0, Lcom/sec/internal/ims/servicemodules/gls/GlsData;->mValidityDate:Lcom/sec/internal/ims/servicemodules/gls/GlsValidityTime;

    .line 28
    return-void
.end method


# virtual methods
.method public getDate()Ljava/util/Date;
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/gls/GlsData;->mDate:Ljava/util/Date;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/gls/GlsData;->mId:Ljava/lang/String;

    return-object v0
.end method

.method public getLabel()Ljava/lang/String;
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/gls/GlsData;->mLabel:Ljava/lang/String;

    return-object v0
.end method

.method public getLocation()Landroid/location/Location;
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/gls/GlsData;->mLocation:Landroid/location/Location;

    return-object v0
.end method

.method public getLocationType()Lcom/sec/internal/constants/ims/servicemodules/gls/LocationType;
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/gls/GlsData;->mLocationType:Lcom/sec/internal/constants/ims/servicemodules/gls/LocationType;

    return-object v0
.end method

.method public getSender()Lcom/sec/ims/util/ImsUri;
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/gls/GlsData;->mUri:Lcom/sec/ims/util/ImsUri;

    return-object v0
.end method

.method public getValidityDate()Lcom/sec/internal/ims/servicemodules/gls/GlsValidityTime;
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/gls/GlsData;->mValidityDate:Lcom/sec/internal/ims/servicemodules/gls/GlsValidityTime;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 81
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 82
    const-string v1, "GlsData ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    const-string/jumbo v1, "sender="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/gls/GlsData;->mUri:Lcom/sec/ims/util/ImsUri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 84
    const-string v1, ", id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/gls/GlsData;->mId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/gls/GlsData;->mLocation:Landroid/location/Location;

    invoke-virtual {v1}, Landroid/location/Location;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    const-string v1, ", location type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/gls/GlsData;->mLocationType:Lcom/sec/internal/constants/ims/servicemodules/gls/LocationType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 87
    const-string v1, ", shared date="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/gls/GlsData;->mDate:Ljava/util/Date;

    invoke-virtual {v1}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    const-string v1, ", label="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/gls/GlsData;->mLabel:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    const-string v1, ", validity date="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/gls/GlsData;->mValidityDate:Lcom/sec/internal/ims/servicemodules/gls/GlsValidityTime;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/gls/GlsValidityTime;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 81
    return-object v0
.end method
