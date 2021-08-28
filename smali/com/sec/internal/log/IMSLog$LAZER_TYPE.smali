.class public final enum Lcom/sec/internal/log/IMSLog$LAZER_TYPE;
.super Ljava/lang/Enum;
.source "IMSLog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/log/IMSLog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LAZER_TYPE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sec/internal/log/IMSLog$LAZER_TYPE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/internal/log/IMSLog$LAZER_TYPE;

.field public static final enum CALL:Lcom/sec/internal/log/IMSLog$LAZER_TYPE;

.field public static final enum REGI:Lcom/sec/internal/log/IMSLog$LAZER_TYPE;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 71
    new-instance v0, Lcom/sec/internal/log/IMSLog$LAZER_TYPE;

    const-string v1, "CALL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sec/internal/log/IMSLog$LAZER_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/internal/log/IMSLog$LAZER_TYPE;->CALL:Lcom/sec/internal/log/IMSLog$LAZER_TYPE;

    .line 72
    new-instance v0, Lcom/sec/internal/log/IMSLog$LAZER_TYPE;

    const-string v1, "REGI"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/sec/internal/log/IMSLog$LAZER_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/internal/log/IMSLog$LAZER_TYPE;->REGI:Lcom/sec/internal/log/IMSLog$LAZER_TYPE;

    .line 70
    const/4 v1, 0x2

    new-array v1, v1, [Lcom/sec/internal/log/IMSLog$LAZER_TYPE;

    sget-object v4, Lcom/sec/internal/log/IMSLog$LAZER_TYPE;->CALL:Lcom/sec/internal/log/IMSLog$LAZER_TYPE;

    aput-object v4, v1, v2

    aput-object v0, v1, v3

    sput-object v1, Lcom/sec/internal/log/IMSLog$LAZER_TYPE;->$VALUES:[Lcom/sec/internal/log/IMSLog$LAZER_TYPE;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 70
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/internal/log/IMSLog$LAZER_TYPE;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 70
    const-class v0, Lcom/sec/internal/log/IMSLog$LAZER_TYPE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/log/IMSLog$LAZER_TYPE;

    return-object v0
.end method

.method public static values()[Lcom/sec/internal/log/IMSLog$LAZER_TYPE;
    .locals 1

    .line 70
    sget-object v0, Lcom/sec/internal/log/IMSLog$LAZER_TYPE;->$VALUES:[Lcom/sec/internal/log/IMSLog$LAZER_TYPE;

    invoke-virtual {v0}, [Lcom/sec/internal/log/IMSLog$LAZER_TYPE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/internal/log/IMSLog$LAZER_TYPE;

    return-object v0
.end method
