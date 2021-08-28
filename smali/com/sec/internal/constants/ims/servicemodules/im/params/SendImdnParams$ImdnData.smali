.class public Lcom/sec/internal/constants/ims/servicemodules/im/params/SendImdnParams$ImdnData;
.super Ljava/lang/Object;
.source "SendImdnParams.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/constants/ims/servicemodules/im/params/SendImdnParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ImdnData"
.end annotation


# instance fields
.field public final mImdnDate:Ljava/util/Date;

.field public final mImdnId:Ljava/lang/String;

.field public final mImdnOriginalTo:Ljava/lang/String;

.field public final mImdnRecRouteList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sec/internal/constants/ims/servicemodules/im/ImImdnRecRoute;",
            ">;"
        }
    .end annotation
.end field

.field public final mStatus:Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;


# direct methods
.method public constructor <init>(Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;Ljava/lang/String;Ljava/util/Date;Ljava/util/List;Ljava/lang/String;)V
    .locals 0
    .param p1, "status"    # Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;
    .param p2, "imdnId"    # Ljava/lang/String;
    .param p3, "receivedMessageDate"    # Ljava/util/Date;
    .param p5, "imdnOriginalTo"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;",
            "Ljava/lang/String;",
            "Ljava/util/Date;",
            "Ljava/util/List<",
            "Lcom/sec/internal/constants/ims/servicemodules/im/ImImdnRecRoute;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 55
    .local p4, "imdnRecRouteList":Ljava/util/List;, "Ljava/util/List<Lcom/sec/internal/constants/ims/servicemodules/im/ImImdnRecRoute;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendImdnParams$ImdnData;->mStatus:Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    .line 57
    iput-object p2, p0, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendImdnParams$ImdnData;->mImdnId:Ljava/lang/String;

    .line 58
    iput-object p3, p0, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendImdnParams$ImdnData;->mImdnDate:Ljava/util/Date;

    .line 59
    iput-object p4, p0, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendImdnParams$ImdnData;->mImdnRecRouteList:Ljava/util/List;

    .line 60
    iput-object p5, p0, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendImdnParams$ImdnData;->mImdnOriginalTo:Ljava/lang/String;

    .line 61
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 65
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ImdnData [mStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendImdnParams$ImdnData;->mStatus:Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mImdnId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendImdnParams$ImdnData;->mImdnId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mImdnDate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendImdnParams$ImdnData;->mImdnDate:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mImdnRecRouteList="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendImdnParams$ImdnData;->mImdnRecRouteList:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mImdnOriginalTo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendImdnParams$ImdnData;->mImdnOriginalTo:Ljava/lang/String;

    .line 69
    invoke-static {v1}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 65
    return-object v0
.end method
