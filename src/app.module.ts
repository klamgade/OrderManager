import { Module } from '@nestjs/common';
import { ConfigModule } from '@nestjs/config';

@Module({
  imports: [
    ConfigModule.forRoot({
      isGlobal: true,  // Makes the config globally accessible
      envFilePath: '.env',  // Specifies the path to the .env file
    }),
  ],
})
export class AppModule {}
