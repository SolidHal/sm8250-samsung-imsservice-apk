.class final enum Lcom/sec/internal/ims/cmstore/omanetapi/FaxHandler$Direction;
.super Ljava/lang/Enum;
.source "FaxHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/cmstore/omanetapi/FaxHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "Direction"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sec/internal/ims/cmstore/omanetapi/FaxHandler$Direction;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/internal/ims/cmstore/omanetapi/FaxHandler$Direction;

.field public static final enum Out:Lcom/sec/internal/ims/cmstore/omanetapi/FaxHandler$Direction;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 81
    new-instance v0, Lcom/sec/internal/ims/cmstore/omanetapi/FaxHandler$Direction;

    const-string v1, "Out"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sec/internal/ims/cmstore/omanetapi/FaxHandler$Direction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/internal/ims/cmstore/omanetapi/FaxHandler$Direction;->Out:Lcom/sec/internal/ims/cmstore/omanetapi/FaxHandler$Direction;

    .line 80
    const/4 v1, 0x1

    new-array v1, v1, [Lcom/sec/internal/ims/cmstore/omanetapi/FaxHandler$Direction;

    aput-object v0, v1, v2

    sput-object v1, Lcom/sec/internal/ims/cmstore/omanetapi/FaxHandler$Direction;->$VALUES:[Lcom/sec/internal/ims/cmstore/omanetapi/FaxHandler$Direction;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 80
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/internal/ims/cmstore/omanetapi/FaxHandler$Direction;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 80
    const-class v0, Lcom/sec/internal/ims/cmstore/omanetapi/FaxHandler$Direction;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/cmstore/omanetapi/FaxHandler$Direction;

    return-object v0
.end method

.method public static values()[Lcom/sec/internal/ims/cmstore/omanetapi/FaxHandler$Direction;
    .locals 1

    .line 80
    sget-object v0, Lcom/sec/internal/ims/cmstore/omanetapi/FaxHandler$Direction;->$VALUES:[Lcom/sec/internal/ims/cmstore/omanetapi/FaxHandler$Direction;

    invoke-virtual {v0}, [Lcom/sec/internal/ims/cmstore/omanetapi/FaxHandler$Direction;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/internal/ims/cmstore/omanetapi/FaxHandler$Direction;

    return-object v0
.end method
