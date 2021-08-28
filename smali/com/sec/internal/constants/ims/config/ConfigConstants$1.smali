.class Lcom/sec/internal/constants/ims/config/ConfigConstants$1;
.super Ljava/util/TreeMap;
.source "ConfigConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/constants/ims/config/ConfigConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/TreeMap<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 3

    .line 564
    invoke-direct {p0}, Ljava/util/TreeMap;-><init>()V

    .line 566
    const-string v0, "ap2001"

    const-string v1, "0"

    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/constants/ims/config/ConfigConstants$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 567
    const-string v0, "ap2002"

    const-string v2, "1"

    invoke-virtual {p0, v0, v2}, Lcom/sec/internal/constants/ims/config/ConfigConstants$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 568
    const-string v0, "ap2003"

    const-string v2, "2"

    invoke-virtual {p0, v0, v2}, Lcom/sec/internal/constants/ims/config/ConfigConstants$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 569
    const-string v0, "ap2004"

    const-string v2, "3"

    invoke-virtual {p0, v0, v2}, Lcom/sec/internal/constants/ims/config/ConfigConstants$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 570
    const-string v0, "ap2005"

    const-string v2, "4"

    invoke-virtual {p0, v0, v2}, Lcom/sec/internal/constants/ims/config/ConfigConstants$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 571
    const-string/jumbo v0, "urn:oma:mo:ext-3gpp-ims:1.0"

    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/constants/ims/config/ConfigConstants$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 572
    const-string/jumbo v0, "urn:oma:mo:ext-3gpp-nas-config:1.0"

    const-string v1, "5"

    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/constants/ims/config/ConfigConstants$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 573
    return-void
.end method
